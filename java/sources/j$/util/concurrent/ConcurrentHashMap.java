package j$.util.concurrent;

import androidx.preference.Preference;
import j$.sun.misc.DesugarUnsafe;
import j$.util.Collection;
import j$.util.Iterator;
import j$.util.Spliterator;
import j$.util.function.BiConsumer;
import j$.util.function.BiFunction;
import j$.util.function.Consumer;
import j$.util.function.Function;
import j$.util.stream.Stream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.locks.LockSupport;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class ConcurrentHashMap extends AbstractMap implements java.util.concurrent.ConcurrentMap, Serializable, ConcurrentMap {
    private static final int ABASE;
    private static final int ASHIFT;
    private static final long BASECOUNT;
    private static final long CELLSBUSY;
    private static final long CELLVALUE;
    static final int NCPU = Runtime.getRuntime().availableProcessors();
    private static final long SIZECTL;
    private static final long TRANSFERINDEX;
    private static final DesugarUnsafe U;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;
    private volatile transient long baseCount;
    private volatile transient int cellsBusy;
    private volatile transient CounterCell[] counterCells;
    private transient EntrySetView entrySet;
    private transient KeySetView keySet;
    private volatile transient Node[] nextTable;
    private volatile transient int sizeCtl;
    volatile transient Node[] table;
    private volatile transient int transferIndex;
    private transient ValuesView values;

    static final int spread(int i) {
        return (i ^ (i >>> 16)) & Preference.DEFAULT_ORDER;
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", Segment[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        DesugarUnsafe unsafe = DesugarUnsafe.getUnsafe();
        U = unsafe;
        SIZECTL = unsafe.objectFieldOffset(ConcurrentHashMap.class, "sizeCtl");
        TRANSFERINDEX = unsafe.objectFieldOffset(ConcurrentHashMap.class, "transferIndex");
        BASECOUNT = unsafe.objectFieldOffset(ConcurrentHashMap.class, "baseCount");
        CELLSBUSY = unsafe.objectFieldOffset(ConcurrentHashMap.class, "cellsBusy");
        CELLVALUE = unsafe.objectFieldOffset(CounterCell.class, "value");
        ABASE = unsafe.arrayBaseOffset(Node[].class);
        int arrayIndexScale = unsafe.arrayIndexScale(Node[].class);
        if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
            throw new ExceptionInInitializerError("array index scale not a power of two");
        }
        ASHIFT = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
    }

    class Node implements Map.Entry {
        final int hash;
        final Object key;
        volatile Node next;
        volatile Object val;

        Node(int i, Object obj, Object obj2) {
            this.hash = i;
            this.key = obj;
            this.val = obj2;
        }

        Node(int i, Object obj, Object obj2, Node node) {
            this(i, obj, obj2);
            this.next = node;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.val;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.key.hashCode() ^ this.val.hashCode();
        }

        public final String toString() {
            return Helpers.mapEntryToString(this.key, this.val);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.key) || key.equals(obj2)) && (value == (obj3 = this.val) || value.equals(obj3));
        }

        Node find(int i, Object obj) {
            Object obj2;
            if (obj == null) {
                return null;
            }
            Node node = this;
            do {
                if (node.hash == i && ((obj2 = node.key) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return node;
                }
                node = node.next;
            } while (node != null);
            return null;
        }
    }

    private static final int tableSizeFor(int i) {
        int numberOfLeadingZeros = (-1) >>> Integer.numberOfLeadingZeros(i - 1);
        if (numberOfLeadingZeros < 0) {
            return 1;
        }
        if (numberOfLeadingZeros >= 1073741824) {
            return 1073741824;
        }
        return 1 + numberOfLeadingZeros;
    }

    static Class comparableClassFor(Object obj) {
        Type[] actualTypeArguments;
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if (cls == String.class) {
            return cls;
        }
        Type[] genericInterfaces = cls.getGenericInterfaces();
        if (genericInterfaces == null) {
            return null;
        }
        for (Type type : genericInterfaces) {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (parameterizedType.getRawType() == Comparable.class && (actualTypeArguments = parameterizedType.getActualTypeArguments()) != null && actualTypeArguments.length == 1 && actualTypeArguments[0] == cls) {
                    return cls;
                }
            }
        }
        return null;
    }

    static int compareComparables(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    static final Node tabAt(Node[] nodeArr, int i) {
        return (Node) U.getObjectAcquire(nodeArr, (i << ASHIFT) + ABASE);
    }

    static final boolean casTabAt(Node[] nodeArr, int i, Node node, Node node2) {
        return U.compareAndSetObject(nodeArr, ABASE + (i << ASHIFT), node, node2);
    }

    static final void setTabAt(Node[] nodeArr, int i, Node node) {
        U.putObjectRelease(nodeArr, (i << ASHIFT) + ABASE, node);
    }

    public ConcurrentHashMap() {
    }

    public ConcurrentHashMap(int i) {
        this(i, 0.75f, 1);
    }

    public ConcurrentHashMap(Map map) {
        this.sizeCtl = 16;
        putAll(map);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= 0.0f || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        double d = (i < i2 ? i2 : i) / f;
        Double.isNaN(d);
        long j = (long) (d + 1.0d);
        this.sizeCtl = j >= 1073741824 ? 1073741824 : tableSizeFor((int) j);
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public int size() {
        long sumCount = sumCount();
        if (sumCount < 0) {
            return 0;
        }
        return sumCount > 2147483647L ? Preference.DEFAULT_ORDER : (int) sumCount;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public boolean isEmpty() {
        return sumCount() <= 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004d, code lost:
    
        return r1.val;
     */
    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object get(Object obj) {
        int length;
        Node tabAt;
        Object obj2;
        int spread = spread(obj.hashCode());
        Node[] nodeArr = this.table;
        if (nodeArr != null && (length = nodeArr.length) > 0 && (tabAt = tabAt(nodeArr, (length - 1) & spread)) != null) {
            int i = tabAt.hash;
            if (i == spread) {
                Object obj3 = tabAt.key;
                if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                    return tabAt.val;
                }
            } else if (i < 0) {
                Node find = tabAt.find(spread, obj);
                if (find != null) {
                    return find.val;
                }
                return null;
            }
            while (true) {
                tabAt = tabAt.next;
                if (tabAt == null) {
                    break;
                }
                if (tabAt.hash != spread || ((obj2 = tabAt.key) != obj && (obj2 == null || !obj.equals(obj2)))) {
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public boolean containsValue(Object obj) {
        if (obj == null) {
            throw null;
        }
        Node[] nodeArr = this.table;
        if (nodeArr != null) {
            Traverser traverser = new Traverser(nodeArr, nodeArr.length, 0, nodeArr.length);
            while (true) {
                Node advance = traverser.advance();
                if (advance == null) {
                    break;
                }
                Object obj2 = advance.val;
                if (obj2 == obj) {
                    return true;
                }
                if (obj2 != null && obj.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public Object put(Object obj, Object obj2) {
        return putVal(obj, obj2, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ae, code lost:
    
        addCount(1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b3, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x009f, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final Object putVal(Object obj, Object obj2, boolean z) {
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        if (obj == null) {
            throw null;
        }
        if (obj2 == null) {
            throw null;
        }
        int spread = spread(obj.hashCode());
        int i = 0;
        Node[] nodeArr = this.table;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i2 = (length - 1) & spread;
                    Node tabAt = tabAt(nodeArr, i2);
                    if (tabAt == null) {
                        if (casTabAt(nodeArr, i2, null, new Node(spread, obj, obj2))) {
                            break;
                        }
                    } else {
                        int i3 = tabAt.hash;
                        if (i3 == -1) {
                            nodeArr = helpTransfer(nodeArr, tabAt);
                        } else {
                            if (z && i3 == spread && (((obj5 = tabAt.key) == obj || (obj5 != null && obj.equals(obj5))) && (obj6 = tabAt.val) != null)) {
                                return obj6;
                            }
                            synchronized (tabAt) {
                                if (tabAt(nodeArr, i2) == tabAt) {
                                    if (i3 >= 0) {
                                        i = 1;
                                        Node node = tabAt;
                                        while (true) {
                                            if (node.hash != spread || ((obj4 = node.key) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                Node node2 = node.next;
                                                if (node2 == null) {
                                                    node.next = new Node(spread, obj, obj2);
                                                    break;
                                                }
                                                i++;
                                                node = node2;
                                            }
                                        }
                                        obj3 = node.val;
                                        if (!z) {
                                            node.val = obj2;
                                        }
                                    } else if (tabAt instanceof TreeBin) {
                                        i = 2;
                                        TreeNode putTreeVal = ((TreeBin) tabAt).putTreeVal(spread, obj, obj2);
                                        if (putTreeVal != null) {
                                            obj3 = putTreeVal.val;
                                            if (!z) {
                                                putTreeVal.val = obj2;
                                            }
                                        }
                                    } else if (tabAt instanceof ReservationNode) {
                                        break;
                                    }
                                }
                                obj3 = null;
                            }
                            if (i != 0) {
                                if (i >= 8) {
                                    treeifyBin(nodeArr, i2);
                                }
                                if (obj3 != null) {
                                    return obj3;
                                }
                            }
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public void putAll(Map map) {
        tryPresize(map.size());
        for (Map.Entry entry : map.entrySet()) {
            putVal(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public Object remove(Object obj) {
        return replaceNode(obj, null, null);
    }

    final Object replaceNode(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        Node tabAt;
        Object obj4;
        TreeNode findTreeNode;
        Object obj5;
        int spread = spread(obj.hashCode());
        Node[] nodeArr = this.table;
        while (true) {
            if (nodeArr == null || (length = nodeArr.length) == 0 || (tabAt = tabAt(nodeArr, (i = (length - 1) & spread))) == null) {
                break;
            }
            int i2 = tabAt.hash;
            if (i2 == -1) {
                nodeArr = helpTransfer(nodeArr, tabAt);
            } else {
                boolean z = false;
                synchronized (tabAt) {
                    if (tabAt(nodeArr, i) == tabAt) {
                        if (i2 >= 0) {
                            Node node = null;
                            Node node2 = tabAt;
                            while (true) {
                                if (node2.hash != spread || ((obj5 = node2.key) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    Node node3 = node2.next;
                                    if (node3 == null) {
                                        break;
                                    }
                                    node = node2;
                                    node2 = node3;
                                }
                            }
                            obj4 = node2.val;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    node2.val = obj2;
                                } else if (node != null) {
                                    node.next = node2.next;
                                } else {
                                    setTabAt(nodeArr, i, node2.next);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (tabAt instanceof TreeBin) {
                            TreeBin treeBin = (TreeBin) tabAt;
                            TreeNode treeNode = treeBin.root;
                            if (treeNode != null && (findTreeNode = treeNode.findTreeNode(spread, obj, null)) != null) {
                                obj4 = findTreeNode.val;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        findTreeNode.val = obj2;
                                    } else if (treeBin.removeTreeNode(findTreeNode)) {
                                        setTabAt(nodeArr, i, untreeify(treeBin.first));
                                    }
                                    z = true;
                                }
                            }
                            obj4 = null;
                            z = true;
                        } else if (tabAt instanceof ReservationNode) {
                            throw new IllegalStateException("Recursive update");
                        }
                    }
                    obj4 = null;
                }
                if (z) {
                    if (obj4 != null) {
                        if (obj2 == null) {
                            addCount(-1L, -1);
                        }
                        return obj4;
                    }
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public void clear() {
        Node tabAt;
        Node node;
        Node[] nodeArr = this.table;
        long j = 0;
        loop0: while (true) {
            int i = 0;
            while (nodeArr != null && i < nodeArr.length) {
                tabAt = tabAt(nodeArr, i);
                if (tabAt == null) {
                    i++;
                } else {
                    int i2 = tabAt.hash;
                    if (i2 == -1) {
                        break;
                    }
                    synchronized (tabAt) {
                        if (tabAt(nodeArr, i) == tabAt) {
                            if (i2 >= 0) {
                                node = tabAt;
                            } else {
                                node = tabAt instanceof TreeBin ? ((TreeBin) tabAt).first : null;
                            }
                            while (node != null) {
                                j--;
                                node = node.next;
                            }
                            setTabAt(nodeArr, i, null);
                            i++;
                        }
                    }
                }
            }
            nodeArr = helpTransfer(nodeArr, tabAt);
        }
        if (j != 0) {
            addCount(j, -1);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public Set keySet() {
        KeySetView keySetView = this.keySet;
        if (keySetView != null) {
            return keySetView;
        }
        KeySetView keySetView2 = new KeySetView(this, null);
        this.keySet = keySetView2;
        return keySetView2;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public Collection values() {
        ValuesView valuesView = this.values;
        if (valuesView != null) {
            return valuesView;
        }
        ValuesView valuesView2 = new ValuesView(this);
        this.values = valuesView2;
        return valuesView2;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public Set entrySet() {
        EntrySetView entrySetView = this.entrySet;
        if (entrySetView != null) {
            return entrySetView;
        }
        EntrySetView entrySetView2 = new EntrySetView(this);
        this.entrySet = entrySetView2;
        return entrySetView2;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public int hashCode() {
        Node[] nodeArr = this.table;
        int i = 0;
        if (nodeArr != null) {
            Traverser traverser = new Traverser(nodeArr, nodeArr.length, 0, nodeArr.length);
            while (true) {
                Node advance = traverser.advance();
                if (advance == null) {
                    break;
                }
                i += advance.val.hashCode() ^ advance.key.hashCode();
            }
        }
        return i;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        Node[] nodeArr = this.table;
        int length = nodeArr == null ? 0 : nodeArr.length;
        Traverser traverser = new Traverser(nodeArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        Node advance = traverser.advance();
        if (advance != null) {
            while (true) {
                Object obj = advance.key;
                Object obj2 = advance.val;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                advance = traverser.advance();
                if (advance == null) {
                    break;
                }
                sb.append(',');
                sb.append(' ');
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public boolean equals(Object obj) {
        Object value;
        Object obj2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        Node[] nodeArr = this.table;
        int length = nodeArr == null ? 0 : nodeArr.length;
        Traverser traverser = new Traverser(nodeArr, length, 0, length);
        while (true) {
            Node advance = traverser.advance();
            if (advance != null) {
                Object obj3 = advance.val;
                Object obj4 = map.get(advance.key);
                if (obj4 == null || (obj4 != obj3 && !obj4.equals(obj3))) {
                    break;
                }
            } else {
                for (Map.Entry entry : map.entrySet()) {
                    Object key = entry.getKey();
                    if (key == null || (value = entry.getValue()) == null || (obj2 = get(key)) == null || (value != obj2 && !value.equals(obj2))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    class Segment extends ReentrantLock {
        private static final long serialVersionUID = 2249069246763182397L;
        final float loadFactor;

        Segment(float f) {
            this.loadFactor = f;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        int i = 1;
        int i2 = 0;
        while (i < 16) {
            i2++;
            i <<= 1;
        }
        int i3 = 32 - i2;
        int i4 = i - 1;
        Segment[] segmentArr = new Segment[16];
        for (int i5 = 0; i5 < 16; i5++) {
            segmentArr[i5] = new Segment(0.75f);
        }
        ObjectOutputStream.PutField putFields = objectOutputStream.putFields();
        putFields.put("segments", segmentArr);
        putFields.put("segmentShift", i3);
        putFields.put("segmentMask", i4);
        objectOutputStream.writeFields();
        Node[] nodeArr = this.table;
        if (nodeArr != null) {
            Traverser traverser = new Traverser(nodeArr, nodeArr.length, 0, nodeArr.length);
            while (true) {
                Node advance = traverser.advance();
                if (advance == null) {
                    break;
                }
                objectOutputStream.writeObject(advance.key);
                objectOutputStream.writeObject(advance.val);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j;
        boolean z;
        boolean z2;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j2 = 0;
        long j3 = 0;
        Node node = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            node = new Node(spread(readObject.hashCode()), readObject, readObject2, node);
        }
        if (j3 == 0) {
            this.sizeCtl = 0;
            return;
        }
        double d = j3 / 0.75f;
        Double.isNaN(d);
        long j4 = (long) (d + 1.0d);
        int tableSizeFor = j4 >= 1073741824 ? 1073741824 : tableSizeFor((int) j4);
        Node[] nodeArr = new Node[tableSizeFor];
        int i = tableSizeFor - 1;
        while (node != null) {
            Node node2 = node.next;
            int i2 = node.hash;
            int i3 = i2 & i;
            Node tabAt = tabAt(nodeArr, i3);
            if (tabAt == null) {
                z2 = true;
            } else {
                Object obj2 = node.key;
                if (tabAt.hash >= 0) {
                    int i4 = 0;
                    for (Node node3 = tabAt; node3 != null; node3 = node3.next) {
                        if (node3.hash == i2 && ((obj = node3.key) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i4++;
                    }
                    z = true;
                    if (!z || i4 < 8) {
                        z2 = z;
                    } else {
                        j2++;
                        node.next = tabAt;
                        Node node4 = node;
                        TreeNode treeNode = null;
                        TreeNode treeNode2 = null;
                        while (node4 != null) {
                            long j5 = j2;
                            TreeNode treeNode3 = new TreeNode(node4.hash, node4.key, node4.val, null, null);
                            treeNode3.prev = treeNode2;
                            if (treeNode2 == null) {
                                treeNode = treeNode3;
                            } else {
                                treeNode2.next = treeNode3;
                            }
                            node4 = node4.next;
                            treeNode2 = treeNode3;
                            j2 = j5;
                        }
                        setTabAt(nodeArr, i3, new TreeBin(treeNode));
                    }
                } else if (((TreeBin) tabAt).putTreeVal(i2, obj2, node.val) == null) {
                    j2 += j;
                }
                z2 = false;
            }
            j = 1;
            if (z2) {
                j2++;
                node.next = tabAt;
                setTabAt(nodeArr, i3, node);
            }
            node = node2;
        }
        this.table = nodeArr;
        this.sizeCtl = tableSizeFor - (tableSizeFor >>> 2);
        this.baseCount = j2;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public Object putIfAbsent(Object obj, Object obj2) {
        return putVal(obj, obj2, true);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        if (obj != null) {
            return (obj2 == null || replaceNode(obj, null, obj2) == null) ? false : true;
        }
        throw null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return replaceNode(obj, obj3, obj2) != null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public Object replace(Object obj, Object obj2) {
        if (obj == null) {
            throw null;
        }
        if (obj2 == null) {
            throw null;
        }
        return replaceNode(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? obj2 : obj3;
    }

    @Override // j$.util.concurrent.ConcurrentMap, j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        if (biConsumer == null) {
            throw null;
        }
        Node[] nodeArr = this.table;
        if (nodeArr == null) {
            return;
        }
        Traverser traverser = new Traverser(nodeArr, nodeArr.length, 0, nodeArr.length);
        while (true) {
            Node advance = traverser.advance();
            if (advance == null) {
                return;
            } else {
                biConsumer.accept(advance.key, advance.val);
            }
        }
    }

    @Override // j$.util.Map
    public void replaceAll(BiFunction biFunction) {
        if (biFunction == null) {
            throw null;
        }
        Node[] nodeArr = this.table;
        if (nodeArr == null) {
            return;
        }
        Traverser traverser = new Traverser(nodeArr, nodeArr.length, 0, nodeArr.length);
        while (true) {
            Node advance = traverser.advance();
            if (advance == null) {
                return;
            }
            Object obj = advance.val;
            Object obj2 = advance.key;
            do {
                Object apply = biFunction.apply(obj2, obj);
                if (apply == null) {
                    throw null;
                }
                if (replaceNode(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f0, code lost:
    
        if (r5 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f2, code lost:
    
        addCount(1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f7, code lost:
    
        return r5;
     */
    @Override // j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object computeIfAbsent(Object obj, Function function) {
        TreeNode findTreeNode;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        if (obj == null) {
            throw null;
        }
        if (function == null) {
            throw null;
        }
        int spread = spread(obj.hashCode());
        Node[] nodeArr = this.table;
        Object obj6 = null;
        int i = 0;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i2 = (length - 1) & spread;
                    Node tabAt = tabAt(nodeArr, i2);
                    boolean z = true;
                    if (tabAt == null) {
                        ReservationNode reservationNode = new ReservationNode();
                        synchronized (reservationNode) {
                            if (casTabAt(nodeArr, i2, null, reservationNode)) {
                                try {
                                    Object apply = function.apply(obj);
                                    setTabAt(nodeArr, i2, apply != null ? new Node(spread, obj, apply) : null);
                                    obj6 = apply;
                                    i = 1;
                                } catch (Throwable th) {
                                    setTabAt(nodeArr, i2, null);
                                    throw th;
                                }
                            }
                        }
                        if (i != 0) {
                            break;
                        }
                    } else {
                        int i3 = tabAt.hash;
                        if (i3 == -1) {
                            nodeArr = helpTransfer(nodeArr, tabAt);
                        } else {
                            if (i3 == spread && (((obj4 = tabAt.key) == obj || (obj4 != null && obj.equals(obj4))) && (obj5 = tabAt.val) != null)) {
                                return obj5;
                            }
                            synchronized (tabAt) {
                                if (tabAt(nodeArr, i2) == tabAt) {
                                    if (i3 >= 0) {
                                        Node node = tabAt;
                                        int i4 = 1;
                                        while (true) {
                                            if (node.hash != spread || ((obj3 = node.key) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                Node node2 = node.next;
                                                if (node2 == null) {
                                                    Object apply2 = function.apply(obj);
                                                    if (apply2 == null) {
                                                        obj2 = apply2;
                                                    } else {
                                                        if (node.next != null) {
                                                            throw new IllegalStateException("Recursive update");
                                                        }
                                                        node.next = new Node(spread, obj, apply2);
                                                        obj2 = apply2;
                                                    }
                                                } else {
                                                    i4++;
                                                    node = node2;
                                                }
                                            }
                                        }
                                        obj2 = node.val;
                                        z = false;
                                        int i5 = i4;
                                        obj6 = obj2;
                                        i = i5;
                                    } else if (tabAt instanceof TreeBin) {
                                        i = 2;
                                        TreeBin treeBin = (TreeBin) tabAt;
                                        TreeNode treeNode = treeBin.root;
                                        if (treeNode != null && (findTreeNode = treeNode.findTreeNode(spread, obj, null)) != null) {
                                            obj6 = findTreeNode.val;
                                        } else {
                                            Object apply3 = function.apply(obj);
                                            if (apply3 != null) {
                                                treeBin.putTreeVal(spread, obj, apply3);
                                                obj6 = apply3;
                                            } else {
                                                obj6 = apply3;
                                            }
                                        }
                                    } else if (tabAt instanceof ReservationNode) {
                                        throw new IllegalStateException("Recursive update");
                                    }
                                }
                                z = false;
                            }
                            if (i != 0) {
                                if (i >= 8) {
                                    treeifyBin(nodeArr, i2);
                                }
                                if (!z) {
                                    return obj6;
                                }
                            }
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a5, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        TreeNode findTreeNode;
        Object obj2;
        if (obj == null) {
            throw null;
        }
        if (biFunction == null) {
            throw null;
        }
        int spread = spread(obj.hashCode());
        Node[] nodeArr = this.table;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & spread;
                    Node tabAt = tabAt(nodeArr, i3);
                    if (tabAt == null) {
                        break;
                    }
                    int i4 = tabAt.hash;
                    if (i4 == -1) {
                        nodeArr = helpTransfer(nodeArr, tabAt);
                    } else {
                        synchronized (tabAt) {
                            if (tabAt(nodeArr, i3) == tabAt) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    Node node = null;
                                    Node node2 = tabAt;
                                    while (true) {
                                        if (node2.hash != spread || ((obj2 = node2.key) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            Node node3 = node2.next;
                                            if (node3 == null) {
                                                break;
                                            }
                                            i2++;
                                            node = node2;
                                            node2 = node3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, node2.val);
                                    if (obj3 != null) {
                                        node2.val = obj3;
                                    } else {
                                        Node node4 = node2.next;
                                        if (node != null) {
                                            node.next = node4;
                                        } else {
                                            setTabAt(nodeArr, i3, node4);
                                        }
                                        i = -1;
                                    }
                                } else if (tabAt instanceof TreeBin) {
                                    i2 = 2;
                                    TreeBin treeBin = (TreeBin) tabAt;
                                    TreeNode treeNode = treeBin.root;
                                    if (treeNode != null && (findTreeNode = treeNode.findTreeNode(spread, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, findTreeNode.val);
                                        if (obj3 != null) {
                                            findTreeNode.val = obj3;
                                        } else {
                                            if (treeBin.removeTreeNode(findTreeNode)) {
                                                setTabAt(nodeArr, i3, untreeify(treeBin.first));
                                            }
                                            i = -1;
                                        }
                                    }
                                } else if (tabAt instanceof ReservationNode) {
                                    break;
                                }
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
        if (i != 0) {
            addCount(i, i2);
        }
        return obj3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x010b, code lost:
    
        if (r4 == 0) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x010d, code lost:
    
        addCount(r4, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0111, code lost:
    
        return r5;
     */
    @Override // j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        Node node;
        Object obj2;
        Object obj3;
        if (obj == null) {
            throw null;
        }
        if (biFunction == null) {
            throw null;
        }
        int spread = spread(obj.hashCode());
        Node[] nodeArr = this.table;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & spread;
                    Node tabAt = tabAt(nodeArr, i4);
                    if (tabAt == null) {
                        ReservationNode reservationNode = new ReservationNode();
                        synchronized (reservationNode) {
                            if (casTabAt(nodeArr, i4, null, reservationNode)) {
                                try {
                                    Object apply = biFunction.apply(obj, null);
                                    if (apply != null) {
                                        node = new Node(spread, obj, apply);
                                        i = 1;
                                    } else {
                                        i = i3;
                                        node = null;
                                    }
                                    setTabAt(nodeArr, i4, node);
                                    i3 = i;
                                    obj4 = apply;
                                    i2 = 1;
                                } catch (Throwable th) {
                                    setTabAt(nodeArr, i4, null);
                                    throw th;
                                }
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i5 = tabAt.hash;
                        if (i5 == -1) {
                            nodeArr = helpTransfer(nodeArr, tabAt);
                        } else {
                            synchronized (tabAt) {
                                if (tabAt(nodeArr, i4) == tabAt) {
                                    if (i5 >= 0) {
                                        Node node2 = null;
                                        Node node3 = tabAt;
                                        i2 = 1;
                                        while (true) {
                                            if (node3.hash != spread || ((obj3 = node3.key) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                Node node4 = node3.next;
                                                if (node4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 == null) {
                                                        obj2 = apply2;
                                                    } else {
                                                        if (node3.next != null) {
                                                            throw new IllegalStateException("Recursive update");
                                                        }
                                                        node3.next = new Node(spread, obj, apply2);
                                                        obj2 = apply2;
                                                        i3 = 1;
                                                    }
                                                } else {
                                                    i2++;
                                                    node2 = node3;
                                                    node3 = node4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, node3.val);
                                        if (obj2 != null) {
                                            node3.val = obj2;
                                        } else {
                                            Node node5 = node3.next;
                                            if (node2 != null) {
                                                node2.next = node5;
                                            } else {
                                                setTabAt(nodeArr, i4, node5);
                                            }
                                            i3 = -1;
                                        }
                                        obj4 = obj2;
                                    } else if (tabAt instanceof TreeBin) {
                                        TreeBin treeBin = (TreeBin) tabAt;
                                        TreeNode treeNode = treeBin.root;
                                        TreeNode findTreeNode = treeNode != null ? treeNode.findTreeNode(spread, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, findTreeNode == null ? null : findTreeNode.val);
                                        if (apply3 != null) {
                                            if (findTreeNode != null) {
                                                findTreeNode.val = apply3;
                                            } else {
                                                treeBin.putTreeVal(spread, obj, apply3);
                                                i3 = 1;
                                            }
                                        } else if (findTreeNode != null) {
                                            if (treeBin.removeTreeNode(findTreeNode)) {
                                                setTabAt(nodeArr, i4, untreeify(treeBin.first));
                                            }
                                            i3 = -1;
                                        }
                                        obj4 = apply3;
                                        i2 = 1;
                                    } else if (tabAt instanceof ReservationNode) {
                                        throw new IllegalStateException("Recursive update");
                                    }
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    treeifyBin(nodeArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00d7, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object merge(Object obj, Object obj2, BiFunction biFunction) {
        int i;
        Object obj3;
        Object obj4;
        Object obj5 = obj2;
        if (obj == null) {
            throw null;
        }
        if (obj5 == null) {
            throw null;
        }
        if (biFunction == null) {
            throw null;
        }
        int spread = spread(obj.hashCode());
        Node[] nodeArr = this.table;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & spread;
                    Node tabAt = tabAt(nodeArr, i4);
                    i = 1;
                    if (tabAt == null) {
                        if (casTabAt(nodeArr, i4, null, new Node(spread, obj, obj5))) {
                            break;
                        }
                    } else {
                        int i5 = tabAt.hash;
                        if (i5 == -1) {
                            nodeArr = helpTransfer(nodeArr, tabAt);
                        } else {
                            synchronized (tabAt) {
                                if (tabAt(nodeArr, i4) == tabAt) {
                                    if (i5 >= 0) {
                                        Node node = null;
                                        Node node2 = tabAt;
                                        int i6 = 1;
                                        while (true) {
                                            if (node2.hash != spread || ((obj4 = node2.key) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                Node node3 = node2.next;
                                                if (node3 == null) {
                                                    node2.next = new Node(spread, obj, obj5);
                                                    obj3 = obj5;
                                                    i3 = 1;
                                                    break;
                                                }
                                                i6++;
                                                node = node2;
                                                node2 = node3;
                                            }
                                        }
                                        obj3 = biFunction.apply(node2.val, obj5);
                                        if (obj3 != null) {
                                            node2.val = obj3;
                                        } else {
                                            Node node4 = node2.next;
                                            if (node != null) {
                                                node.next = node4;
                                            } else {
                                                setTabAt(nodeArr, i4, node4);
                                            }
                                            i3 = -1;
                                        }
                                        i2 = i6;
                                        obj6 = obj3;
                                    } else if (tabAt instanceof TreeBin) {
                                        i2 = 2;
                                        TreeBin treeBin = (TreeBin) tabAt;
                                        TreeNode treeNode = treeBin.root;
                                        TreeNode findTreeNode = treeNode == null ? null : treeNode.findTreeNode(spread, obj, null);
                                        Object apply = findTreeNode == null ? obj5 : biFunction.apply(findTreeNode.val, obj5);
                                        if (apply != null) {
                                            if (findTreeNode != null) {
                                                findTreeNode.val = apply;
                                            } else {
                                                treeBin.putTreeVal(spread, obj, apply);
                                                i3 = 1;
                                            }
                                        } else if (findTreeNode != null) {
                                            if (treeBin.removeTreeNode(findTreeNode)) {
                                                setTabAt(nodeArr, i4, untreeify(treeBin.first));
                                            }
                                            i3 = -1;
                                        }
                                        obj6 = apply;
                                    } else if (tabAt instanceof ReservationNode) {
                                        break;
                                    }
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    treeifyBin(nodeArr, i4);
                                }
                                i = i3;
                                obj5 = obj6;
                            }
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
        if (i != 0) {
            addCount(i, i2);
        }
        return obj5;
    }

    public long mappingCount() {
        long sumCount = sumCount();
        if (sumCount < 0) {
            return 0L;
        }
        return sumCount;
    }

    final class ForwardingNode extends Node {
        final Node[] nextTable;

        ForwardingNode(Node[] nodeArr) {
            super(-1, null, null);
            this.nextTable = nodeArr;
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.Node
        Node find(int i, Object obj) {
            int length;
            Node tabAt;
            Object obj2;
            Node[] nodeArr = this.nextTable;
            loop0: while (obj != null && nodeArr != null && (length = nodeArr.length) != 0 && (tabAt = ConcurrentHashMap.tabAt(nodeArr, (length - 1) & i)) != null) {
                do {
                    int i2 = tabAt.hash;
                    if (i2 == i && ((obj2 = tabAt.key) == obj || (obj2 != null && obj.equals(obj2)))) {
                        return tabAt;
                    }
                    if (i2 < 0) {
                        if (tabAt instanceof ForwardingNode) {
                            nodeArr = ((ForwardingNode) tabAt).nextTable;
                        } else {
                            return tabAt.find(i, obj);
                        }
                    } else {
                        tabAt = tabAt.next;
                    }
                } while (tabAt != null);
            }
            return null;
        }
    }

    final class ReservationNode extends Node {
        @Override // j$.util.concurrent.ConcurrentHashMap.Node
        Node find(int i, Object obj) {
            return null;
        }

        ReservationNode() {
            super(-3, null, null);
        }
    }

    static final int resizeStamp(int i) {
        return Integer.numberOfLeadingZeros(i) | 32768;
    }

    private final Node[] initTable() {
        while (true) {
            Node[] nodeArr = this.table;
            if (nodeArr != null && nodeArr.length != 0) {
                return nodeArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (U.compareAndSetInt(this, SIZECTL, i, -1)) {
                try {
                    Node[] nodeArr2 = this.table;
                    if (nodeArr2 == null || nodeArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        Node[] nodeArr3 = new Node[i2];
                        this.table = nodeArr3;
                        i = i2 - (i2 >>> 2);
                        nodeArr2 = nodeArr3;
                    }
                    this.sizeCtl = i;
                    return nodeArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r1.compareAndSetLong(r11, r3, r5, r9) == false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void addCount(long j, int i) {
        int length;
        CounterCell counterCell;
        long sumCount;
        Node[] nodeArr;
        int length2;
        Node[] nodeArr2;
        CounterCell[] counterCellArr = this.counterCells;
        if (counterCellArr == null) {
            DesugarUnsafe desugarUnsafe = U;
            long j2 = BASECOUNT;
            long j3 = this.baseCount;
            sumCount = j3 + j;
        }
        boolean z = true;
        if (counterCellArr != null && (length = counterCellArr.length - 1) >= 0 && (counterCell = counterCellArr[length & ThreadLocalRandom.getProbe()]) != null) {
            DesugarUnsafe desugarUnsafe2 = U;
            long j4 = CELLVALUE;
            long j5 = counterCell.value;
            boolean compareAndSetLong = desugarUnsafe2.compareAndSetLong(counterCell, j4, j5, j5 + j);
            if (!compareAndSetLong) {
                z = compareAndSetLong;
            } else {
                if (i <= 1) {
                    return;
                }
                sumCount = sumCount();
                if (i < 0) {
                    return;
                }
                while (true) {
                    int i2 = this.sizeCtl;
                    if (sumCount < i2 || (nodeArr = this.table) == null || (length2 = nodeArr.length) >= 1073741824) {
                        return;
                    }
                    int resizeStamp = resizeStamp(length2);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != resizeStamp || i2 == resizeStamp + 1 || i2 == resizeStamp + 65535 || (nodeArr2 = this.nextTable) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (U.compareAndSetInt(this, SIZECTL, i2, i2 + 1)) {
                            transfer(nodeArr, nodeArr2);
                        }
                    } else if (U.compareAndSetInt(this, SIZECTL, i2, (resizeStamp << 16) + 2)) {
                        transfer(nodeArr, null);
                    }
                    sumCount = sumCount();
                }
            }
        }
        fullAddCount(j, z);
    }

    final Node[] helpTransfer(Node[] nodeArr, Node node) {
        Node[] nodeArr2;
        int i;
        if (nodeArr != null && (node instanceof ForwardingNode) && (nodeArr2 = ((ForwardingNode) node).nextTable) != null) {
            int resizeStamp = resizeStamp(nodeArr.length);
            while (true) {
                if (nodeArr2 != this.nextTable || this.table != nodeArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != resizeStamp || i == resizeStamp + 1 || i == 65535 + resizeStamp || this.transferIndex <= 0) {
                    break;
                }
                if (U.compareAndSetInt(this, SIZECTL, i, i + 1)) {
                    transfer(nodeArr, nodeArr2);
                    break;
                }
            }
            return nodeArr2;
        }
        return this.table;
    }

    private final void tryPresize(int i) {
        int length;
        int tableSizeFor = i >= 536870912 ? 1073741824 : tableSizeFor(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            Node[] nodeArr = this.table;
            if (nodeArr == null || (length = nodeArr.length) == 0) {
                int i3 = i2 > tableSizeFor ? i2 : tableSizeFor;
                if (U.compareAndSetInt(this, SIZECTL, i2, -1)) {
                    try {
                        if (this.table == nodeArr) {
                            this.table = new Node[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else {
                if (tableSizeFor <= i2 || length >= 1073741824) {
                    return;
                }
                if (nodeArr == this.table) {
                    if (U.compareAndSetInt(this, SIZECTL, i2, (resizeStamp(length) << 16) + 2)) {
                        transfer(nodeArr, null);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10, types: [j$.util.concurrent.ConcurrentHashMap$Node] */
    /* JADX WARN: Type inference failed for: r13v12, types: [j$.util.concurrent.ConcurrentHashMap$Node] */
    /* JADX WARN: Type inference failed for: r4v0, types: [j$.util.concurrent.ConcurrentHashMap$Node] */
    /* JADX WARN: Type inference failed for: r5v17, types: [j$.util.concurrent.ConcurrentHashMap$Node] */
    /* JADX WARN: Type inference failed for: r5v22, types: [j$.util.concurrent.ConcurrentHashMap$Node] */
    private final void transfer(Node[] nodeArr, Node[] nodeArr2) {
        Node[] nodeArr3;
        int i;
        int i2;
        ForwardingNode forwardingNode;
        ConcurrentHashMap concurrentHashMap;
        int i3;
        Node treeBin;
        Node treeBin2;
        TreeNode treeNode;
        int i4;
        ConcurrentHashMap concurrentHashMap2 = this;
        Node[] nodeArr4 = nodeArr;
        int length = nodeArr4.length;
        int i5 = NCPU;
        int i6 = i5 > 1 ? (length >>> 3) / i5 : length;
        int i7 = i6 < 16 ? 16 : i6;
        if (nodeArr2 == null) {
            try {
                Node[] nodeArr5 = new Node[length << 1];
                concurrentHashMap2.nextTable = nodeArr5;
                concurrentHashMap2.transferIndex = length;
                nodeArr3 = nodeArr5;
            } catch (Throwable unused) {
                concurrentHashMap2.sizeCtl = Preference.DEFAULT_ORDER;
                return;
            }
        } else {
            nodeArr3 = nodeArr2;
        }
        int length2 = nodeArr3.length;
        ForwardingNode forwardingNode2 = new ForwardingNode(nodeArr3);
        int i8 = 0;
        int i9 = 0;
        boolean z = true;
        boolean z2 = false;
        while (true) {
            if (z) {
                int i10 = i9 - 1;
                if (i10 >= i8 || z2) {
                    i8 = i8;
                    i9 = i10;
                } else {
                    int i11 = concurrentHashMap2.transferIndex;
                    if (i11 <= 0) {
                        i9 = -1;
                    } else {
                        DesugarUnsafe desugarUnsafe = U;
                        long j = TRANSFERINDEX;
                        int i12 = i11 > i7 ? i11 - i7 : 0;
                        int i13 = i8;
                        if (desugarUnsafe.compareAndSetInt(this, j, i11, i12)) {
                            i9 = i11 - 1;
                            i8 = i12;
                        } else {
                            i8 = i13;
                            i9 = i10;
                        }
                    }
                }
                z = false;
            } else {
                int i14 = i8;
                TreeNode treeNode2 = null;
                if (i9 < 0 || i9 >= length || (i3 = i9 + length) >= length2) {
                    i = i7;
                    i2 = length2;
                    forwardingNode = forwardingNode2;
                    if (z2) {
                        this.nextTable = null;
                        this.table = nodeArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    concurrentHashMap = this;
                    DesugarUnsafe desugarUnsafe2 = U;
                    long j2 = SIZECTL;
                    int i15 = concurrentHashMap.sizeCtl;
                    int i16 = i9;
                    if (!desugarUnsafe2.compareAndSetInt(this, j2, i15, i15 - 1)) {
                        i9 = i16;
                    } else {
                        if (i15 - 2 != (resizeStamp(length) << 16)) {
                            return;
                        }
                        i9 = length;
                        z = true;
                        z2 = true;
                    }
                } else {
                    ?? tabAt = tabAt(nodeArr4, i9);
                    if (tabAt == 0) {
                        z = casTabAt(nodeArr4, i9, null, forwardingNode2);
                        concurrentHashMap = concurrentHashMap2;
                        i = i7;
                        i2 = length2;
                        forwardingNode = forwardingNode2;
                    } else {
                        int i17 = tabAt.hash;
                        if (i17 == -1) {
                            concurrentHashMap = concurrentHashMap2;
                            i = i7;
                            i2 = length2;
                            forwardingNode = forwardingNode2;
                            z = true;
                        } else {
                            synchronized (tabAt) {
                                if (tabAt(nodeArr4, i9) == tabAt) {
                                    if (i17 >= 0) {
                                        int i18 = i17 & length;
                                        TreeNode treeNode3 = tabAt;
                                        for (TreeNode treeNode4 = tabAt.next; treeNode4 != null; treeNode4 = treeNode4.next) {
                                            int i19 = treeNode4.hash & length;
                                            if (i19 != i18) {
                                                treeNode3 = treeNode4;
                                                i18 = i19;
                                            }
                                        }
                                        if (i18 == 0) {
                                            treeNode = null;
                                            treeNode2 = treeNode3;
                                        } else {
                                            treeNode = treeNode3;
                                        }
                                        Node node = tabAt;
                                        while (node != treeNode3) {
                                            int i20 = node.hash;
                                            Object obj = node.key;
                                            int i21 = i7;
                                            Object obj2 = node.val;
                                            if ((i20 & length) == 0) {
                                                i4 = length2;
                                                treeNode2 = new Node(i20, obj, obj2, treeNode2);
                                            } else {
                                                i4 = length2;
                                                treeNode = new Node(i20, obj, obj2, treeNode);
                                            }
                                            node = node.next;
                                            i7 = i21;
                                            length2 = i4;
                                        }
                                        i = i7;
                                        i2 = length2;
                                        setTabAt(nodeArr3, i9, treeNode2);
                                        setTabAt(nodeArr3, i3, treeNode);
                                        setTabAt(nodeArr4, i9, forwardingNode2);
                                        forwardingNode = forwardingNode2;
                                    } else {
                                        i = i7;
                                        i2 = length2;
                                        if (tabAt instanceof TreeBin) {
                                            TreeBin treeBin3 = (TreeBin) tabAt;
                                            TreeNode treeNode5 = null;
                                            TreeNode treeNode6 = null;
                                            Node node2 = treeBin3.first;
                                            int i22 = 0;
                                            int i23 = 0;
                                            TreeNode treeNode7 = null;
                                            while (node2 != null) {
                                                TreeBin treeBin4 = treeBin3;
                                                int i24 = node2.hash;
                                                ForwardingNode forwardingNode3 = forwardingNode2;
                                                TreeNode treeNode8 = new TreeNode(i24, node2.key, node2.val, null, null);
                                                if ((i24 & length) == 0) {
                                                    treeNode8.prev = treeNode6;
                                                    if (treeNode6 == null) {
                                                        treeNode2 = treeNode8;
                                                    } else {
                                                        treeNode6.next = treeNode8;
                                                    }
                                                    i22++;
                                                    treeNode6 = treeNode8;
                                                } else {
                                                    treeNode8.prev = treeNode5;
                                                    if (treeNode5 == null) {
                                                        treeNode7 = treeNode8;
                                                    } else {
                                                        treeNode5.next = treeNode8;
                                                    }
                                                    i23++;
                                                    treeNode5 = treeNode8;
                                                }
                                                node2 = node2.next;
                                                treeBin3 = treeBin4;
                                                forwardingNode2 = forwardingNode3;
                                            }
                                            TreeBin treeBin5 = treeBin3;
                                            ForwardingNode forwardingNode4 = forwardingNode2;
                                            if (i22 <= 6) {
                                                treeBin = untreeify(treeNode2);
                                            } else {
                                                treeBin = i23 != 0 ? new TreeBin(treeNode2) : treeBin5;
                                            }
                                            if (i23 <= 6) {
                                                treeBin2 = untreeify(treeNode7);
                                            } else {
                                                treeBin2 = i22 != 0 ? new TreeBin(treeNode7) : treeBin5;
                                            }
                                            setTabAt(nodeArr3, i9, treeBin);
                                            setTabAt(nodeArr3, i3, treeBin2);
                                            nodeArr4 = nodeArr;
                                            forwardingNode = forwardingNode4;
                                            setTabAt(nodeArr4, i9, forwardingNode);
                                        }
                                    }
                                    z = true;
                                } else {
                                    i = i7;
                                    i2 = length2;
                                }
                                forwardingNode = forwardingNode2;
                            }
                            concurrentHashMap = this;
                        }
                    }
                }
                forwardingNode2 = forwardingNode;
                concurrentHashMap2 = concurrentHashMap;
                i8 = i14;
                i7 = i;
                length2 = i2;
            }
        }
    }

    final class CounterCell {
        volatile long value;

        CounterCell(long j) {
            this.value = j;
        }
    }

    final long sumCount() {
        CounterCell[] counterCellArr = this.counterCells;
        long j = this.baseCount;
        if (counterCellArr != null) {
            for (CounterCell counterCell : counterCellArr) {
                if (counterCell != null) {
                    j += counterCell.value;
                }
            }
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x009d, code lost:
    
        if (r24.counterCells != r7) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x009f, code lost:
    
        r24.counterCells = (j$.util.concurrent.ConcurrentHashMap.CounterCell[]) java.util.Arrays.copyOf(r7, r8 << 1);
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00fc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x001b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void fullAddCount(long j, boolean z) {
        int i;
        boolean z2;
        boolean z3;
        int length;
        boolean z4;
        int length2;
        int probe = ThreadLocalRandom.getProbe();
        if (probe == 0) {
            ThreadLocalRandom.localInit();
            i = ThreadLocalRandom.getProbe();
            z2 = true;
        } else {
            i = probe;
            z2 = z;
        }
        int i2 = i;
        while (true) {
            boolean z5 = false;
            while (true) {
                CounterCell[] counterCellArr = this.counterCells;
                if (counterCellArr != null && (length = counterCellArr.length) > 0) {
                    CounterCell counterCell = counterCellArr[(length - 1) & i2];
                    if (counterCell == null) {
                        if (this.cellsBusy == 0) {
                            CounterCell counterCell2 = new CounterCell(j);
                            if (this.cellsBusy == 0 && U.compareAndSetInt(this, CELLSBUSY, 0, 1)) {
                                try {
                                    CounterCell[] counterCellArr2 = this.counterCells;
                                    if (counterCellArr2 != null && (length2 = counterCellArr2.length) > 0) {
                                        int i3 = (length2 - 1) & i2;
                                        if (counterCellArr2[i3] == null) {
                                            counterCellArr2[i3] = counterCell2;
                                            z4 = true;
                                            if (!z4) {
                                                return;
                                            }
                                        }
                                    }
                                    z4 = false;
                                    if (!z4) {
                                    }
                                } finally {
                                }
                            }
                        }
                    } else {
                        if (z2) {
                            DesugarUnsafe desugarUnsafe = U;
                            long j2 = CELLVALUE;
                            long j3 = counterCell.value;
                            if (desugarUnsafe.compareAndSetLong(counterCell, j2, j3, j3 + j)) {
                                return;
                            }
                            if (this.counterCells == counterCellArr && length < NCPU) {
                                if (!z5) {
                                    z5 = true;
                                } else if (this.cellsBusy == 0 && desugarUnsafe.compareAndSetInt(this, CELLSBUSY, 0, 1)) {
                                    try {
                                        break;
                                    } finally {
                                    }
                                }
                            }
                        } else {
                            z2 = true;
                        }
                        i2 = ThreadLocalRandom.advanceProbe(i2);
                    }
                    z5 = false;
                    i2 = ThreadLocalRandom.advanceProbe(i2);
                } else if (this.cellsBusy == 0 && this.counterCells == counterCellArr && U.compareAndSetInt(this, CELLSBUSY, 0, 1)) {
                    try {
                        if (this.counterCells == counterCellArr) {
                            CounterCell[] counterCellArr3 = new CounterCell[2];
                            counterCellArr3[i2 & 1] = new CounterCell(j);
                            this.counterCells = counterCellArr3;
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            return;
                        }
                    } finally {
                    }
                } else {
                    DesugarUnsafe desugarUnsafe2 = U;
                    long j4 = BASECOUNT;
                    long j5 = this.baseCount;
                    if (desugarUnsafe2.compareAndSetLong(this, j4, j5, j5 + j)) {
                        return;
                    }
                }
            }
        }
    }

    private final void treeifyBin(Node[] nodeArr, int i) {
        if (nodeArr != null) {
            int length = nodeArr.length;
            if (length < 64) {
                tryPresize(length << 1);
                return;
            }
            Node tabAt = tabAt(nodeArr, i);
            if (tabAt == null || tabAt.hash < 0) {
                return;
            }
            synchronized (tabAt) {
                if (tabAt(nodeArr, i) == tabAt) {
                    TreeNode treeNode = null;
                    Node node = tabAt;
                    TreeNode treeNode2 = null;
                    while (node != null) {
                        TreeNode treeNode3 = new TreeNode(node.hash, node.key, node.val, null, null);
                        treeNode3.prev = treeNode2;
                        if (treeNode2 == null) {
                            treeNode = treeNode3;
                        } else {
                            treeNode2.next = treeNode3;
                        }
                        node = node.next;
                        treeNode2 = treeNode3;
                    }
                    setTabAt(nodeArr, i, new TreeBin(treeNode));
                }
            }
        }
    }

    static Node untreeify(Node node) {
        Node node2 = null;
        Node node3 = null;
        while (node != null) {
            Node node4 = new Node(node.hash, node.key, node.val);
            if (node3 == null) {
                node2 = node4;
            } else {
                node3.next = node4;
            }
            node = node.next;
            node3 = node4;
        }
        return node2;
    }

    final class TreeNode extends Node {
        TreeNode left;
        TreeNode parent;
        TreeNode prev;
        boolean red;
        TreeNode right;

        TreeNode(int i, Object obj, Object obj2, Node node, TreeNode treeNode) {
            super(i, obj, obj2, node);
            this.parent = treeNode;
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.Node
        Node find(int i, Object obj) {
            return findTreeNode(i, obj, null);
        }

        final TreeNode findTreeNode(int i, Object obj, Class cls) {
            int compareComparables;
            if (obj == null) {
                return null;
            }
            TreeNode treeNode = this;
            do {
                TreeNode treeNode2 = treeNode.left;
                TreeNode treeNode3 = treeNode.right;
                int i2 = treeNode.hash;
                if (i2 <= i) {
                    if (i2 >= i) {
                        Object obj2 = treeNode.key;
                        if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                            return treeNode;
                        }
                        if (treeNode2 != null) {
                            if (treeNode3 != null) {
                                if ((cls == null && (cls = ConcurrentHashMap.comparableClassFor(obj)) == null) || (compareComparables = ConcurrentHashMap.compareComparables(cls, obj, obj2)) == 0) {
                                    TreeNode findTreeNode = treeNode3.findTreeNode(i, obj, cls);
                                    if (findTreeNode != null) {
                                        return findTreeNode;
                                    }
                                } else if (compareComparables >= 0) {
                                    treeNode2 = treeNode3;
                                }
                            }
                        }
                    }
                    treeNode = treeNode3;
                }
                treeNode = treeNode2;
            } while (treeNode != null);
            return null;
        }
    }

    final class TreeBin extends Node {
        private static final long LOCKSTATE;
        private static final DesugarUnsafe U;
        volatile TreeNode first;
        volatile int lockState;
        TreeNode root;
        volatile Thread waiter;

        static {
            DesugarUnsafe unsafe = DesugarUnsafe.getUnsafe();
            U = unsafe;
            LOCKSTATE = unsafe.objectFieldOffset(TreeBin.class, "lockState");
        }

        static int tieBreakOrder(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        TreeBin(TreeNode treeNode) {
            super(-2, null, null);
            int compareComparables;
            int tieBreakOrder;
            this.first = treeNode;
            TreeNode treeNode2 = null;
            while (treeNode != null) {
                TreeNode treeNode3 = (TreeNode) treeNode.next;
                treeNode.right = null;
                treeNode.left = null;
                if (treeNode2 == null) {
                    treeNode.parent = null;
                    treeNode.red = false;
                } else {
                    Object obj = treeNode.key;
                    int i = treeNode.hash;
                    TreeNode treeNode4 = treeNode2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = treeNode4.key;
                        int i2 = treeNode4.hash;
                        if (i2 > i) {
                            tieBreakOrder = -1;
                        } else if (i2 < i) {
                            tieBreakOrder = 1;
                        } else {
                            tieBreakOrder = ((cls == null && (cls = ConcurrentHashMap.comparableClassFor(obj)) == null) || (compareComparables = ConcurrentHashMap.compareComparables(cls, obj, obj2)) == 0) ? tieBreakOrder(obj, obj2) : compareComparables;
                        }
                        TreeNode treeNode5 = tieBreakOrder <= 0 ? treeNode4.left : treeNode4.right;
                        if (treeNode5 == null) {
                            break;
                        } else {
                            treeNode4 = treeNode5;
                        }
                    }
                    treeNode.parent = treeNode4;
                    if (tieBreakOrder <= 0) {
                        treeNode4.left = treeNode;
                    } else {
                        treeNode4.right = treeNode;
                    }
                    treeNode = balanceInsertion(treeNode2, treeNode);
                }
                treeNode2 = treeNode;
                treeNode = treeNode3;
            }
            this.root = treeNode2;
        }

        private final void lockRoot() {
            if (U.compareAndSetInt(this, LOCKSTATE, 0, 1)) {
                return;
            }
            contendedLock();
        }

        private final void unlockRoot() {
            this.lockState = 0;
        }

        private final void contendedLock() {
            boolean z = false;
            while (true) {
                int i = this.lockState;
                if ((i & (-3)) == 0) {
                    if (U.compareAndSetInt(this, LOCKSTATE, i, 1)) {
                        break;
                    }
                } else if ((i & 2) == 0) {
                    if (U.compareAndSetInt(this, LOCKSTATE, i, i | 2)) {
                        z = true;
                        this.waiter = Thread.currentThread();
                    }
                } else if (z) {
                    LockSupport.park(this);
                }
            }
            if (z) {
                this.waiter = null;
            }
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.Node
        final Node find(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            TreeNode treeNode = null;
            if (obj != null) {
                Node node = this.first;
                while (node != null) {
                    int i2 = this.lockState;
                    if ((i2 & 3) != 0) {
                        if (node.hash == i && ((obj2 = node.key) == obj || (obj2 != null && obj.equals(obj2)))) {
                            return node;
                        }
                        node = node.next;
                    } else {
                        DesugarUnsafe desugarUnsafe = U;
                        long j = LOCKSTATE;
                        if (desugarUnsafe.compareAndSetInt(this, j, i2, i2 + 4)) {
                            try {
                                TreeNode treeNode2 = this.root;
                                if (treeNode2 != null) {
                                    treeNode = treeNode2.findTreeNode(i, obj, null);
                                }
                                if (desugarUnsafe.getAndAddInt(this, j, -4) == 6 && (thread2 = this.waiter) != null) {
                                    LockSupport.unpark(thread2);
                                }
                                return treeNode;
                            } catch (Throwable th) {
                                if (U.getAndAddInt(this, LOCKSTATE, -4) == 6 && (thread = this.waiter) != null) {
                                    LockSupport.unpark(thread);
                                }
                                throw th;
                            }
                        }
                    }
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0097, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0056, code lost:
        
            return r2;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        final TreeNode putTreeVal(int i, Object obj, Object obj2) {
            int compareComparables;
            int i2;
            TreeNode treeNode;
            TreeNode treeNode2 = this.root;
            boolean z = false;
            Class cls = null;
            while (true) {
                if (treeNode2 == null) {
                    TreeNode treeNode3 = new TreeNode(i, obj, obj2, null, null);
                    this.root = treeNode3;
                    this.first = treeNode3;
                    break;
                }
                int i3 = treeNode2.hash;
                if (i3 > i) {
                    i2 = -1;
                } else if (i3 < i) {
                    i2 = 1;
                } else {
                    Object obj3 = treeNode2.key;
                    if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                        break;
                    }
                    if ((cls == null && (cls = ConcurrentHashMap.comparableClassFor(obj)) == null) || (compareComparables = ConcurrentHashMap.compareComparables(cls, obj, obj3)) == 0) {
                        if (!z) {
                            TreeNode treeNode4 = treeNode2.left;
                            if ((treeNode4 == null || (r2 = treeNode4.findTreeNode(i, obj, cls)) == null) && ((treeNode = treeNode2.right) == null || (r2 = treeNode.findTreeNode(i, obj, cls)) == null)) {
                                z = true;
                            }
                        }
                        i2 = tieBreakOrder(obj, obj3);
                    } else {
                        i2 = compareComparables;
                    }
                }
                TreeNode treeNode5 = i2 <= 0 ? treeNode2.left : treeNode2.right;
                if (treeNode5 == null) {
                    TreeNode treeNode6 = this.first;
                    TreeNode treeNode7 = new TreeNode(i, obj, obj2, treeNode6, treeNode2);
                    this.first = treeNode7;
                    if (treeNode6 != null) {
                        treeNode6.prev = treeNode7;
                    }
                    if (i2 <= 0) {
                        treeNode2.left = treeNode7;
                    } else {
                        treeNode2.right = treeNode7;
                    }
                    if (!treeNode2.red) {
                        treeNode7.red = true;
                    } else {
                        lockRoot();
                        try {
                            this.root = balanceInsertion(this.root, treeNode7);
                        } finally {
                            unlockRoot();
                        }
                    }
                } else {
                    treeNode2 = treeNode5;
                }
            }
            return treeNode2;
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x008d A[Catch: all -> 0x00c9, TryCatch #0 {all -> 0x00c9, blocks: (B:21:0x002f, B:25:0x0038, B:29:0x003e, B:31:0x004c, B:32:0x0064, B:34:0x006a, B:35:0x006c, B:41:0x008d, B:44:0x009e, B:45:0x0095, B:47:0x0099, B:48:0x009c, B:49:0x00a4, B:52:0x00ad, B:54:0x00b1, B:56:0x00b5, B:58:0x00b9, B:59:0x00c2, B:61:0x00bc, B:63:0x00c0, B:66:0x00a9, B:68:0x0076, B:70:0x007a, B:71:0x007d, B:72:0x0051, B:74:0x0057, B:76:0x005b, B:77:0x005e, B:78:0x0060), top: B:20:0x002f }] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00b1 A[Catch: all -> 0x00c9, TryCatch #0 {all -> 0x00c9, blocks: (B:21:0x002f, B:25:0x0038, B:29:0x003e, B:31:0x004c, B:32:0x0064, B:34:0x006a, B:35:0x006c, B:41:0x008d, B:44:0x009e, B:45:0x0095, B:47:0x0099, B:48:0x009c, B:49:0x00a4, B:52:0x00ad, B:54:0x00b1, B:56:0x00b5, B:58:0x00b9, B:59:0x00c2, B:61:0x00bc, B:63:0x00c0, B:66:0x00a9, B:68:0x0076, B:70:0x007a, B:71:0x007d, B:72:0x0051, B:74:0x0057, B:76:0x005b, B:77:0x005e, B:78:0x0060), top: B:20:0x002f }] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00b9 A[Catch: all -> 0x00c9, TryCatch #0 {all -> 0x00c9, blocks: (B:21:0x002f, B:25:0x0038, B:29:0x003e, B:31:0x004c, B:32:0x0064, B:34:0x006a, B:35:0x006c, B:41:0x008d, B:44:0x009e, B:45:0x0095, B:47:0x0099, B:48:0x009c, B:49:0x00a4, B:52:0x00ad, B:54:0x00b1, B:56:0x00b5, B:58:0x00b9, B:59:0x00c2, B:61:0x00bc, B:63:0x00c0, B:66:0x00a9, B:68:0x0076, B:70:0x007a, B:71:0x007d, B:72:0x0051, B:74:0x0057, B:76:0x005b, B:77:0x005e, B:78:0x0060), top: B:20:0x002f }] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x00bc A[Catch: all -> 0x00c9, TryCatch #0 {all -> 0x00c9, blocks: (B:21:0x002f, B:25:0x0038, B:29:0x003e, B:31:0x004c, B:32:0x0064, B:34:0x006a, B:35:0x006c, B:41:0x008d, B:44:0x009e, B:45:0x0095, B:47:0x0099, B:48:0x009c, B:49:0x00a4, B:52:0x00ad, B:54:0x00b1, B:56:0x00b5, B:58:0x00b9, B:59:0x00c2, B:61:0x00bc, B:63:0x00c0, B:66:0x00a9, B:68:0x0076, B:70:0x007a, B:71:0x007d, B:72:0x0051, B:74:0x0057, B:76:0x005b, B:77:0x005e, B:78:0x0060), top: B:20:0x002f }] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00a9 A[Catch: all -> 0x00c9, TryCatch #0 {all -> 0x00c9, blocks: (B:21:0x002f, B:25:0x0038, B:29:0x003e, B:31:0x004c, B:32:0x0064, B:34:0x006a, B:35:0x006c, B:41:0x008d, B:44:0x009e, B:45:0x0095, B:47:0x0099, B:48:0x009c, B:49:0x00a4, B:52:0x00ad, B:54:0x00b1, B:56:0x00b5, B:58:0x00b9, B:59:0x00c2, B:61:0x00bc, B:63:0x00c0, B:66:0x00a9, B:68:0x0076, B:70:0x007a, B:71:0x007d, B:72:0x0051, B:74:0x0057, B:76:0x005b, B:77:0x005e, B:78:0x0060), top: B:20:0x002f }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        final boolean removeTreeNode(TreeNode treeNode) {
            TreeNode treeNode2;
            TreeNode treeNode3;
            TreeNode treeNode4 = (TreeNode) treeNode.next;
            TreeNode treeNode5 = treeNode.prev;
            if (treeNode5 == null) {
                this.first = treeNode4;
            } else {
                treeNode5.next = treeNode4;
            }
            if (treeNode4 != null) {
                treeNode4.prev = treeNode5;
            }
            if (this.first == null) {
                this.root = null;
                return true;
            }
            TreeNode treeNode6 = this.root;
            if (treeNode6 == null || treeNode6.right == null || (treeNode2 = treeNode6.left) == null || treeNode2.left == null) {
                return true;
            }
            lockRoot();
            try {
                TreeNode treeNode7 = treeNode.left;
                TreeNode treeNode8 = treeNode.right;
                if (treeNode7 != null && treeNode8 != null) {
                    TreeNode treeNode9 = treeNode8;
                    while (true) {
                        TreeNode treeNode10 = treeNode9.left;
                        if (treeNode10 == null) {
                            break;
                        }
                        treeNode9 = treeNode10;
                    }
                    boolean z = treeNode9.red;
                    treeNode9.red = treeNode.red;
                    treeNode.red = z;
                    TreeNode treeNode11 = treeNode9.right;
                    TreeNode treeNode12 = treeNode.parent;
                    if (treeNode9 == treeNode8) {
                        treeNode.parent = treeNode9;
                        treeNode9.right = treeNode;
                    } else {
                        TreeNode treeNode13 = treeNode9.parent;
                        treeNode.parent = treeNode13;
                        if (treeNode13 != null) {
                            if (treeNode9 == treeNode13.left) {
                                treeNode13.left = treeNode;
                            } else {
                                treeNode13.right = treeNode;
                            }
                        }
                        treeNode9.right = treeNode8;
                        treeNode8.parent = treeNode9;
                    }
                    treeNode.left = null;
                    treeNode.right = treeNode11;
                    if (treeNode11 != null) {
                        treeNode11.parent = treeNode;
                    }
                    treeNode9.left = treeNode7;
                    treeNode7.parent = treeNode9;
                    treeNode9.parent = treeNode12;
                    if (treeNode12 == null) {
                        treeNode6 = treeNode9;
                    } else if (treeNode == treeNode12.left) {
                        treeNode12.left = treeNode9;
                    } else {
                        treeNode12.right = treeNode9;
                    }
                    if (treeNode11 != null) {
                        treeNode7 = treeNode11;
                        if (treeNode7 != treeNode) {
                        }
                        if (!treeNode.red) {
                        }
                        this.root = treeNode6;
                        if (treeNode == treeNode7) {
                            if (treeNode != treeNode3.left) {
                            }
                            treeNode.parent = null;
                        }
                        unlockRoot();
                        return false;
                    }
                    treeNode7 = treeNode;
                    if (treeNode7 != treeNode) {
                    }
                    if (!treeNode.red) {
                    }
                    this.root = treeNode6;
                    if (treeNode == treeNode7) {
                    }
                    unlockRoot();
                    return false;
                }
                if (treeNode7 == null) {
                    if (treeNode8 != null) {
                        treeNode7 = treeNode8;
                    }
                    treeNode7 = treeNode;
                }
                if (treeNode7 != treeNode) {
                    TreeNode treeNode14 = treeNode.parent;
                    treeNode7.parent = treeNode14;
                    if (treeNode14 == null) {
                        treeNode6 = treeNode7;
                    } else if (treeNode == treeNode14.left) {
                        treeNode14.left = treeNode7;
                    } else {
                        treeNode14.right = treeNode7;
                    }
                    treeNode.parent = null;
                    treeNode.right = null;
                    treeNode.left = null;
                }
                if (!treeNode.red) {
                    treeNode6 = balanceDeletion(treeNode6, treeNode7);
                }
                this.root = treeNode6;
                if (treeNode == treeNode7 && (treeNode3 = treeNode.parent) != null) {
                    if (treeNode != treeNode3.left) {
                        treeNode3.left = null;
                    } else if (treeNode == treeNode3.right) {
                        treeNode3.right = null;
                    }
                    treeNode.parent = null;
                }
                unlockRoot();
                return false;
            } catch (Throwable th) {
                unlockRoot();
                throw th;
            }
        }

        static TreeNode rotateLeft(TreeNode treeNode, TreeNode treeNode2) {
            TreeNode treeNode3;
            if (treeNode2 != null && (treeNode3 = treeNode2.right) != null) {
                TreeNode treeNode4 = treeNode3.left;
                treeNode2.right = treeNode4;
                if (treeNode4 != null) {
                    treeNode4.parent = treeNode2;
                }
                TreeNode treeNode5 = treeNode2.parent;
                treeNode3.parent = treeNode5;
                if (treeNode5 == null) {
                    treeNode3.red = false;
                    treeNode = treeNode3;
                } else if (treeNode5.left == treeNode2) {
                    treeNode5.left = treeNode3;
                } else {
                    treeNode5.right = treeNode3;
                }
                treeNode3.left = treeNode2;
                treeNode2.parent = treeNode3;
            }
            return treeNode;
        }

        static TreeNode rotateRight(TreeNode treeNode, TreeNode treeNode2) {
            TreeNode treeNode3;
            if (treeNode2 != null && (treeNode3 = treeNode2.left) != null) {
                TreeNode treeNode4 = treeNode3.right;
                treeNode2.left = treeNode4;
                if (treeNode4 != null) {
                    treeNode4.parent = treeNode2;
                }
                TreeNode treeNode5 = treeNode2.parent;
                treeNode3.parent = treeNode5;
                if (treeNode5 == null) {
                    treeNode3.red = false;
                    treeNode = treeNode3;
                } else if (treeNode5.right == treeNode2) {
                    treeNode5.right = treeNode3;
                } else {
                    treeNode5.left = treeNode3;
                }
                treeNode3.right = treeNode2;
                treeNode2.parent = treeNode3;
            }
            return treeNode;
        }

        static TreeNode balanceInsertion(TreeNode treeNode, TreeNode treeNode2) {
            TreeNode treeNode3;
            treeNode2.red = true;
            while (true) {
                TreeNode treeNode4 = treeNode2.parent;
                if (treeNode4 == null) {
                    treeNode2.red = false;
                    return treeNode2;
                }
                if (!treeNode4.red || (treeNode3 = treeNode4.parent) == null) {
                    break;
                }
                TreeNode treeNode5 = treeNode3.left;
                if (treeNode4 == treeNode5) {
                    TreeNode treeNode6 = treeNode3.right;
                    if (treeNode6 != null && treeNode6.red) {
                        treeNode6.red = false;
                        treeNode4.red = false;
                        treeNode3.red = true;
                        treeNode2 = treeNode3;
                    } else {
                        if (treeNode2 == treeNode4.right) {
                            treeNode = rotateLeft(treeNode, treeNode4);
                            TreeNode treeNode7 = treeNode4.parent;
                            treeNode3 = treeNode7 == null ? null : treeNode7.parent;
                            treeNode4 = treeNode7;
                            treeNode2 = treeNode4;
                        }
                        if (treeNode4 != null) {
                            treeNode4.red = false;
                            if (treeNode3 != null) {
                                treeNode3.red = true;
                                treeNode = rotateRight(treeNode, treeNode3);
                            }
                        }
                    }
                } else if (treeNode5 != null && treeNode5.red) {
                    treeNode5.red = false;
                    treeNode4.red = false;
                    treeNode3.red = true;
                    treeNode2 = treeNode3;
                } else {
                    if (treeNode2 == treeNode4.left) {
                        treeNode = rotateRight(treeNode, treeNode4);
                        TreeNode treeNode8 = treeNode4.parent;
                        treeNode3 = treeNode8 == null ? null : treeNode8.parent;
                        treeNode4 = treeNode8;
                        treeNode2 = treeNode4;
                    }
                    if (treeNode4 != null) {
                        treeNode4.red = false;
                        if (treeNode3 != null) {
                            treeNode3.red = true;
                            treeNode = rotateLeft(treeNode, treeNode3);
                        }
                    }
                }
            }
            return treeNode;
        }

        static TreeNode balanceDeletion(TreeNode treeNode, TreeNode treeNode2) {
            while (treeNode2 != null && treeNode2 != treeNode) {
                TreeNode treeNode3 = treeNode2.parent;
                if (treeNode3 == null) {
                    treeNode2.red = false;
                    return treeNode2;
                }
                if (treeNode2.red) {
                    treeNode2.red = false;
                    return treeNode;
                }
                TreeNode treeNode4 = treeNode3.left;
                if (treeNode4 == treeNode2) {
                    TreeNode treeNode5 = treeNode3.right;
                    if (treeNode5 != null && treeNode5.red) {
                        treeNode5.red = false;
                        treeNode3.red = true;
                        treeNode = rotateLeft(treeNode, treeNode3);
                        treeNode3 = treeNode2.parent;
                        treeNode5 = treeNode3 == null ? null : treeNode3.right;
                    }
                    if (treeNode5 != null) {
                        TreeNode treeNode6 = treeNode5.left;
                        TreeNode treeNode7 = treeNode5.right;
                        if ((treeNode7 == null || !treeNode7.red) && (treeNode6 == null || !treeNode6.red)) {
                            treeNode5.red = true;
                        } else {
                            if (treeNode7 == null || !treeNode7.red) {
                                if (treeNode6 != null) {
                                    treeNode6.red = false;
                                }
                                treeNode5.red = true;
                                treeNode = rotateRight(treeNode, treeNode5);
                                treeNode3 = treeNode2.parent;
                                treeNode5 = treeNode3 != null ? treeNode3.right : null;
                            }
                            if (treeNode5 != null) {
                                treeNode5.red = treeNode3 == null ? false : treeNode3.red;
                                TreeNode treeNode8 = treeNode5.right;
                                if (treeNode8 != null) {
                                    treeNode8.red = false;
                                }
                            }
                            if (treeNode3 != null) {
                                treeNode3.red = false;
                                treeNode = rotateLeft(treeNode, treeNode3);
                            }
                            treeNode2 = treeNode;
                        }
                    }
                    treeNode2 = treeNode3;
                } else {
                    if (treeNode4 != null && treeNode4.red) {
                        treeNode4.red = false;
                        treeNode3.red = true;
                        treeNode = rotateRight(treeNode, treeNode3);
                        treeNode3 = treeNode2.parent;
                        treeNode4 = treeNode3 == null ? null : treeNode3.left;
                    }
                    if (treeNode4 != null) {
                        TreeNode treeNode9 = treeNode4.left;
                        TreeNode treeNode10 = treeNode4.right;
                        if ((treeNode9 == null || !treeNode9.red) && (treeNode10 == null || !treeNode10.red)) {
                            treeNode4.red = true;
                        } else {
                            if (treeNode9 == null || !treeNode9.red) {
                                if (treeNode10 != null) {
                                    treeNode10.red = false;
                                }
                                treeNode4.red = true;
                                treeNode = rotateLeft(treeNode, treeNode4);
                                treeNode3 = treeNode2.parent;
                                treeNode4 = treeNode3 != null ? treeNode3.left : null;
                            }
                            if (treeNode4 != null) {
                                treeNode4.red = treeNode3 == null ? false : treeNode3.red;
                                TreeNode treeNode11 = treeNode4.left;
                                if (treeNode11 != null) {
                                    treeNode11.red = false;
                                }
                            }
                            if (treeNode3 != null) {
                                treeNode3.red = false;
                                treeNode = rotateRight(treeNode, treeNode3);
                            }
                            treeNode2 = treeNode;
                        }
                    }
                    treeNode2 = treeNode3;
                }
            }
            return treeNode;
        }
    }

    final class TableStack {
        int index;
        int length;
        TableStack next;
        Node[] tab;

        TableStack() {
        }
    }

    class Traverser {
        int baseIndex;
        int baseLimit;
        final int baseSize;
        int index;
        Node next = null;
        TableStack spare;
        TableStack stack;
        Node[] tab;

        Traverser(Node[] nodeArr, int i, int i2, int i3) {
            this.tab = nodeArr;
            this.baseSize = i;
            this.index = i2;
            this.baseIndex = i2;
            this.baseLimit = i3;
        }

        final Node advance() {
            Node[] nodeArr;
            int length;
            int i;
            Node node = this.next;
            if (node != null) {
                node = node.next;
            }
            while (node == null) {
                if (this.baseIndex >= this.baseLimit || (nodeArr = this.tab) == null || (length = nodeArr.length) <= (i = this.index) || i < 0) {
                    this.next = null;
                    return null;
                }
                Node tabAt = ConcurrentHashMap.tabAt(nodeArr, i);
                if (tabAt == null || tabAt.hash >= 0) {
                    node = tabAt;
                } else if (tabAt instanceof ForwardingNode) {
                    this.tab = ((ForwardingNode) tabAt).nextTable;
                    pushState(nodeArr, i, length);
                    node = null;
                } else {
                    node = tabAt instanceof TreeBin ? ((TreeBin) tabAt).first : null;
                }
                if (this.stack != null) {
                    recoverState(length);
                } else {
                    int i2 = i + this.baseSize;
                    this.index = i2;
                    if (i2 >= length) {
                        int i3 = this.baseIndex + 1;
                        this.baseIndex = i3;
                        this.index = i3;
                    }
                }
            }
            this.next = node;
            return node;
        }

        private void pushState(Node[] nodeArr, int i, int i2) {
            TableStack tableStack = this.spare;
            if (tableStack != null) {
                this.spare = tableStack.next;
            } else {
                tableStack = new TableStack();
            }
            tableStack.tab = nodeArr;
            tableStack.length = i2;
            tableStack.index = i;
            tableStack.next = this.stack;
            this.stack = tableStack;
        }

        private void recoverState(int i) {
            TableStack tableStack;
            while (true) {
                tableStack = this.stack;
                if (tableStack == null) {
                    break;
                }
                int i2 = this.index;
                int i3 = tableStack.length;
                int i4 = i2 + i3;
                this.index = i4;
                if (i4 < i) {
                    break;
                }
                this.index = tableStack.index;
                this.tab = tableStack.tab;
                tableStack.tab = null;
                TableStack tableStack2 = tableStack.next;
                tableStack.next = this.spare;
                this.stack = tableStack2;
                this.spare = tableStack;
                i = i3;
            }
            if (tableStack == null) {
                int i5 = this.index + this.baseSize;
                this.index = i5;
                if (i5 >= i) {
                    int i6 = this.baseIndex + 1;
                    this.baseIndex = i6;
                    this.index = i6;
                }
            }
        }
    }

    abstract class BaseIterator extends Traverser {
        Node lastReturned;
        final ConcurrentHashMap map;

        BaseIterator(Node[] nodeArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(nodeArr, i, i2, i3);
            this.map = concurrentHashMap;
            advance();
        }

        public final boolean hasNext() {
            return this.next != null;
        }

        public final boolean hasMoreElements() {
            return this.next != null;
        }

        public final void remove() {
            Node node = this.lastReturned;
            if (node == null) {
                throw new IllegalStateException();
            }
            this.lastReturned = null;
            this.map.replaceNode(node.key, null, null);
        }
    }

    final class KeyIterator extends BaseIterator implements Iterator, Enumeration, j$.util.Iterator {
        @Override // j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        KeyIterator(Node[] nodeArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(nodeArr, i, i2, i3, concurrentHashMap);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            Node node = this.next;
            if (node == null) {
                throw new NoSuchElementException();
            }
            Object obj = node.key;
            this.lastReturned = node;
            advance();
            return obj;
        }

        @Override // java.util.Enumeration
        public final Object nextElement() {
            return next();
        }
    }

    final class ValueIterator extends BaseIterator implements java.util.Iterator, Enumeration, j$.util.Iterator {
        @Override // j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        ValueIterator(Node[] nodeArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(nodeArr, i, i2, i3, concurrentHashMap);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            Node node = this.next;
            if (node == null) {
                throw new NoSuchElementException();
            }
            Object obj = node.val;
            this.lastReturned = node;
            advance();
            return obj;
        }

        @Override // java.util.Enumeration
        public final Object nextElement() {
            return next();
        }
    }

    final class EntryIterator extends BaseIterator implements java.util.Iterator, j$.util.Iterator {
        @Override // j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        EntryIterator(Node[] nodeArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(nodeArr, i, i2, i3, concurrentHashMap);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Map.Entry next() {
            Node node = this.next;
            if (node == null) {
                throw new NoSuchElementException();
            }
            Object obj = node.key;
            Object obj2 = node.val;
            this.lastReturned = node;
            advance();
            return new MapEntry(obj, obj2, this.map);
        }
    }

    final class MapEntry implements Map.Entry {
        final Object key;
        final ConcurrentHashMap map;
        Object val;

        MapEntry(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
            this.key = obj;
            this.val = obj2;
            this.map = concurrentHashMap;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.val;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.key.hashCode() ^ this.val.hashCode();
        }

        public String toString() {
            return Helpers.mapEntryToString(this.key, this.val);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.key) || key.equals(obj2)) && (value == (obj3 = this.val) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj == null) {
                throw null;
            }
            Object obj2 = this.val;
            this.val = obj;
            this.map.put(this.key, obj);
            return obj2;
        }
    }

    final class KeySpliterator extends Traverser implements Spliterator {
        long est;

        @Override // j$.util.Spliterator
        public int characteristics() {
            return 4353;
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ Comparator getComparator() {
            return Spliterator.CC.$default$getComparator(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return Spliterator.CC.$default$getExactSizeIfKnown(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return Spliterator.CC.$default$hasCharacteristics(this, i);
        }

        KeySpliterator(Node[] nodeArr, int i, int i2, int i3, long j) {
            super(nodeArr, i, i2, i3);
            this.est = j;
        }

        @Override // j$.util.Spliterator
        public KeySpliterator trySplit() {
            int i = this.baseIndex;
            int i2 = this.baseLimit;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            Node[] nodeArr = this.tab;
            int i4 = this.baseSize;
            this.baseLimit = i3;
            long j = this.est >>> 1;
            this.est = j;
            return new KeySpliterator(nodeArr, i4, i3, i2, j);
        }

        @Override // j$.util.Spliterator
        public void forEachRemaining(Consumer consumer) {
            if (consumer == null) {
                throw null;
            }
            while (true) {
                Node advance = advance();
                if (advance == null) {
                    return;
                } else {
                    consumer.accept(advance.key);
                }
            }
        }

        @Override // j$.util.Spliterator
        public boolean tryAdvance(Consumer consumer) {
            if (consumer == null) {
                throw null;
            }
            Node advance = advance();
            if (advance == null) {
                return false;
            }
            consumer.accept(advance.key);
            return true;
        }

        @Override // j$.util.Spliterator
        public long estimateSize() {
            return this.est;
        }
    }

    final class ValueSpliterator extends Traverser implements Spliterator {
        long est;

        @Override // j$.util.Spliterator
        public int characteristics() {
            return 4352;
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ Comparator getComparator() {
            return Spliterator.CC.$default$getComparator(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return Spliterator.CC.$default$getExactSizeIfKnown(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return Spliterator.CC.$default$hasCharacteristics(this, i);
        }

        ValueSpliterator(Node[] nodeArr, int i, int i2, int i3, long j) {
            super(nodeArr, i, i2, i3);
            this.est = j;
        }

        @Override // j$.util.Spliterator
        public ValueSpliterator trySplit() {
            int i = this.baseIndex;
            int i2 = this.baseLimit;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            Node[] nodeArr = this.tab;
            int i4 = this.baseSize;
            this.baseLimit = i3;
            long j = this.est >>> 1;
            this.est = j;
            return new ValueSpliterator(nodeArr, i4, i3, i2, j);
        }

        @Override // j$.util.Spliterator
        public void forEachRemaining(Consumer consumer) {
            if (consumer == null) {
                throw null;
            }
            while (true) {
                Node advance = advance();
                if (advance == null) {
                    return;
                } else {
                    consumer.accept(advance.val);
                }
            }
        }

        @Override // j$.util.Spliterator
        public boolean tryAdvance(Consumer consumer) {
            if (consumer == null) {
                throw null;
            }
            Node advance = advance();
            if (advance == null) {
                return false;
            }
            consumer.accept(advance.val);
            return true;
        }

        @Override // j$.util.Spliterator
        public long estimateSize() {
            return this.est;
        }
    }

    final class EntrySpliterator extends Traverser implements Spliterator {
        long est;
        final ConcurrentHashMap map;

        @Override // j$.util.Spliterator
        public int characteristics() {
            return 4353;
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ Comparator getComparator() {
            return Spliterator.CC.$default$getComparator(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return Spliterator.CC.$default$getExactSizeIfKnown(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return Spliterator.CC.$default$hasCharacteristics(this, i);
        }

        EntrySpliterator(Node[] nodeArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(nodeArr, i, i2, i3);
            this.map = concurrentHashMap;
            this.est = j;
        }

        @Override // j$.util.Spliterator
        public EntrySpliterator trySplit() {
            int i = this.baseIndex;
            int i2 = this.baseLimit;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            Node[] nodeArr = this.tab;
            int i4 = this.baseSize;
            this.baseLimit = i3;
            long j = this.est >>> 1;
            this.est = j;
            return new EntrySpliterator(nodeArr, i4, i3, i2, j, this.map);
        }

        @Override // j$.util.Spliterator
        public void forEachRemaining(Consumer consumer) {
            if (consumer == null) {
                throw null;
            }
            while (true) {
                Node advance = advance();
                if (advance == null) {
                    return;
                } else {
                    consumer.accept(new MapEntry(advance.key, advance.val, this.map));
                }
            }
        }

        @Override // j$.util.Spliterator
        public boolean tryAdvance(Consumer consumer) {
            if (consumer == null) {
                throw null;
            }
            Node advance = advance();
            if (advance == null) {
                return false;
            }
            consumer.accept(new MapEntry(advance.key, advance.val, this.map));
            return true;
        }

        @Override // j$.util.Spliterator
        public long estimateSize() {
            return this.est;
        }
    }

    abstract class CollectionView implements Collection, Serializable {
        private static final long serialVersionUID = 7249069246763182397L;
        final ConcurrentHashMap map;

        @Override // java.util.Collection
        public abstract boolean contains(Object obj);

        @Override // java.util.Collection, java.lang.Iterable
        public abstract java.util.Iterator iterator();

        @Override // java.util.Collection
        public abstract boolean remove(Object obj);

        CollectionView(ConcurrentHashMap concurrentHashMap) {
            this.map = concurrentHashMap;
        }

        @Override // java.util.Collection
        public final void clear() {
            this.map.clear();
        }

        @Override // java.util.Collection
        public final int size() {
            return this.map.size();
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return this.map.isEmpty();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            long mappingCount = this.map.mappingCount();
            if (mappingCount > 2147483639) {
                throw new OutOfMemoryError("Required array size too large");
            }
            int i = (int) mappingCount;
            Object[] objArr = new Object[i];
            int i2 = 0;
            java.util.Iterator it = iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (i2 == i) {
                    if (i >= 2147483639) {
                        throw new OutOfMemoryError("Required array size too large");
                    }
                    int i3 = i < 1073741819 ? (i >>> 1) + 1 + i : 2147483639;
                    objArr = Arrays.copyOf(objArr, i3);
                    i = i3;
                }
                objArr[i2] = next;
                i2++;
            }
            return i2 == i ? objArr : Arrays.copyOf(objArr, i2);
        }

        @Override // java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            long mappingCount = this.map.mappingCount();
            if (mappingCount > 2147483639) {
                throw new OutOfMemoryError("Required array size too large");
            }
            int i = (int) mappingCount;
            Object[] objArr2 = objArr.length >= i ? objArr : (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
            int length = objArr2.length;
            int i2 = 0;
            java.util.Iterator it = iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (i2 == length) {
                    if (length >= 2147483639) {
                        throw new OutOfMemoryError("Required array size too large");
                    }
                    int i3 = length < 1073741819 ? (length >>> 1) + 1 + length : 2147483639;
                    objArr2 = Arrays.copyOf(objArr2, i3);
                    length = i3;
                }
                objArr2[i2] = next;
                i2++;
            }
            if (objArr != objArr2 || i2 >= length) {
                return i2 == length ? objArr2 : Arrays.copyOf(objArr2, i2);
            }
            objArr2[i2] = null;
            return objArr2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            java.util.Iterator it = iterator();
            if (it.hasNext()) {
                while (true) {
                    Object next = it.next();
                    if (next == this) {
                        next = "(this Collection)";
                    }
                    sb.append(next);
                    if (!it.hasNext()) {
                        break;
                    }
                    sb.append(',');
                    sb.append(' ');
                }
            }
            sb.append(']');
            return sb.toString();
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection collection) {
            if (collection == this) {
                return true;
            }
            for (Object obj : collection) {
                if (obj == null || !contains(obj)) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection collection) {
            if (collection == null) {
                throw null;
            }
            Node[] nodeArr = this.map.table;
            boolean z = false;
            if (nodeArr == null) {
                return false;
            }
            if ((collection instanceof Set) && collection.size() > nodeArr.length) {
                java.util.Iterator it = iterator();
                while (it.hasNext()) {
                    if (collection.contains(it.next())) {
                        it.remove();
                        z = true;
                    }
                }
            } else {
                java.util.Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    z |= remove(it2.next());
                }
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection collection) {
            if (collection == null) {
                throw null;
            }
            boolean z = false;
            java.util.Iterator it = iterator();
            while (it.hasNext()) {
                if (!collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }
    }

    public class KeySetView extends CollectionView implements Set, j$.util.Collection {
        private static final long serialVersionUID = 7249069246763182397L;
        private final Object value;

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection
        public /* bridge */ /* synthetic */ boolean removeAll(java.util.Collection collection) {
            return super.removeAll(collection);
        }

        KeySetView(ConcurrentHashMap concurrentHashMap, Object obj) {
            super(concurrentHashMap);
            this.value = obj;
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection
        public boolean contains(Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection
        public boolean remove(Object obj) {
            return this.map.remove(obj) != null;
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.map;
            Node[] nodeArr = concurrentHashMap.table;
            int length = nodeArr == null ? 0 : nodeArr.length;
            return new KeyIterator(nodeArr, length, 0, length, concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean add(Object obj) {
            Object obj2 = this.value;
            if (obj2 != null) {
                return this.map.putVal(obj, obj2, true) == null;
            }
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean addAll(java.util.Collection collection) {
            Object obj = this.value;
            if (obj == null) {
                throw new UnsupportedOperationException();
            }
            java.util.Iterator it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (this.map.putVal(it.next(), obj, true) == null) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (it.hasNext()) {
                i += it.next().hashCode();
            }
            return i;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Collection
        public Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.map;
            long sumCount = concurrentHashMap.sumCount();
            Node[] nodeArr = concurrentHashMap.table;
            int length = nodeArr == null ? 0 : nodeArr.length;
            return new KeySpliterator(nodeArr, length, 0, length, sumCount >= 0 ? sumCount : 0L);
        }
    }

    final class ValuesView extends CollectionView implements j$.util.Collection {
        private static final long serialVersionUID = 2249069246763182397L;

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        ValuesView(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection
        public final boolean contains(Object obj) {
            return this.map.containsValue(obj);
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection
        public final boolean remove(Object obj) {
            if (obj == null) {
                return false;
            }
            java.util.Iterator it = iterator();
            while (it.hasNext()) {
                if (obj.equals(it.next())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.map;
            Node[] nodeArr = concurrentHashMap.table;
            int length = nodeArr == null ? 0 : nodeArr.length;
            return new ValueIterator(nodeArr, length, 0, length, concurrentHashMap);
        }

        @Override // java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(java.util.Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection
        public boolean removeAll(java.util.Collection collection) {
            if (collection == null) {
                throw null;
            }
            boolean z = false;
            java.util.Iterator it = iterator();
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.Collection, java.lang.Iterable, j$.util.Collection, java.util.Set
        public Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.map;
            long sumCount = concurrentHashMap.sumCount();
            Node[] nodeArr = concurrentHashMap.table;
            int length = nodeArr == null ? 0 : nodeArr.length;
            return new ValueSpliterator(nodeArr, length, 0, length, sumCount >= 0 ? sumCount : 0L);
        }
    }

    final class EntrySetView extends CollectionView implements Set, j$.util.Collection {
        private static final long serialVersionUID = 2249069246763182397L;

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        EntrySetView(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            Object value;
            return (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.map.get(key)) == null || (value = entry.getValue()) == null || (value != obj2 && !value.equals(obj2))) ? false : true;
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.map.remove(key, value);
        }

        @Override // j$.util.concurrent.ConcurrentHashMap.CollectionView, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.map;
            Node[] nodeArr = concurrentHashMap.table;
            int length = nodeArr == null ? 0 : nodeArr.length;
            return new EntryIterator(nodeArr, length, 0, length, concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean add(Map.Entry entry) {
            return this.map.putVal(entry.getKey(), entry.getValue(), false) == null;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean addAll(java.util.Collection collection) {
            java.util.Iterator it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (add((Map.Entry) it.next())) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            Node[] nodeArr = this.map.table;
            int i = 0;
            if (nodeArr != null) {
                Traverser traverser = new Traverser(nodeArr, nodeArr.length, 0, nodeArr.length);
                while (true) {
                    Node advance = traverser.advance();
                    if (advance == null) {
                        break;
                    }
                    i += advance.hashCode();
                }
            }
            return i;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Collection
        public Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.map;
            long sumCount = concurrentHashMap.sumCount();
            Node[] nodeArr = concurrentHashMap.table;
            int length = nodeArr == null ? 0 : nodeArr.length;
            return new EntrySpliterator(nodeArr, length, 0, length, sumCount >= 0 ? sumCount : 0L, concurrentHashMap);
        }
    }
}
