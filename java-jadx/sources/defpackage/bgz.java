package defpackage;

import android.graphics.Point;
import android.graphics.Rect;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bgz {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/video/ProjectionRenderer");
    public static final boolean b;
    public final azy c;
    public final View d;
    public final SurfaceView e;
    public final ckb g;
    public bgy i;
    public Point k;
    public Point l;
    public final Queue n;
    public final bey p;
    private final bhd q;
    private final SurfaceHolder.Callback r;
    private final bfh s;
    private final bgp t;
    public final Rect f = new Rect();
    public boolean h = false;
    public volatile int j = 0;
    public double m = 1.0d;
    public das o = das.e();

    static {
        boolean z = true;
        if (!"eng".equals(Build.TYPE) && !"userdebug".equals(Build.TYPE)) {
            z = false;
        }
        b = z;
    }

    public bgz(azy azyVar, bfh bfhVar, View view, SurfaceView surfaceView, bey beyVar, bhd bhdVar, ckb ckbVar) {
        bgt bgtVar = new bgt(this);
        this.r = bgtVar;
        this.q = bhdVar;
        this.c = azyVar;
        this.s = bfhVar;
        this.g = ckbVar;
        this.d = view;
        this.e = surfaceView;
        this.p = beyVar;
        this.t = bgp.a;
        SurfaceHolder holder = surfaceView.getHolder();
        Rect surfaceFrame = holder.getSurfaceFrame();
        if (surfaceFrame != null) {
            i(surfaceFrame.width(), surfaceFrame.height());
        }
        holder.addCallback(bgtVar);
        if (!holder.isCreating() && holder.getSurface() != null && holder.getSurface().isValid()) {
            bgtVar.surfaceCreated(holder);
        }
        this.n = new ConcurrentLinkedQueue();
    }

    public final synchronized void a(final cma cmaVar) {
        if (this.j != 0 && this.j != 1 && this.j != 3) {
            final bgy bgyVar = this.i;
            bgyVar.f.post(new Runnable() { // from class: bgw
                @Override // java.lang.Runnable
                public final void run() {
                    Integer num;
                    bgy bgyVar2 = bgy.this;
                    cma cmaVar2 = cmaVar;
                    MediaCodec mediaCodec = bgyVar2.e.b;
                    do {
                        num = (Integer) bgyVar2.b.poll();
                        if (num == null) {
                            bgyVar2.a.offer(cmaVar2);
                            csz cszVar = bgz.a;
                            csz.b.y(TimeUnit.SECONDS);
                            bgyVar2.a.size();
                            return;
                        }
                    } while (!bgyVar2.b(mediaCodec, cmaVar2, num.intValue()));
                    bgyVar2.c.offer(cmaVar2);
                }
            });
        }
    }

    public final synchronized void b(byte[] bArr) {
        if (this.j != 0 && this.j != 1) {
            if (this.n.isEmpty()) {
                c(bArr);
            }
            return;
        }
        this.n.add(bArr);
    }

    public final synchronized void c(byte[] bArr) {
        if (this.j == 3) {
            return;
        }
        final ByteBuffer allocate = ByteBuffer.allocate(bArr.length);
        allocate.put(bArr);
        allocate.rewind();
        final bgy bgyVar = this.i;
        final int i = this.k.x;
        final int i2 = this.k.y;
        bgyVar.f.post(new Runnable() { // from class: bgx
            @Override // java.lang.Runnable
            public final void run() {
                int i3;
                int i4;
                int i5;
                int i6;
                bgy bgyVar2 = bgy.this;
                ByteBuffer byteBuffer = allocate;
                int i7 = i;
                int i8 = i2;
                MediaCodec mediaCodec = bgyVar2.e.b;
                if (bgyVar2.g) {
                    mediaCodec.flush();
                    mediaCodec.stop();
                    mediaCodec.release();
                    bgyVar2.b.clear();
                    try {
                        bgyVar2.e = bgyVar2.h.a();
                        mediaCodec = bgyVar2.e.b;
                    } catch (Exception e) {
                        ((csx) ((csx) bgz.a.b().g(e)).h("com/google/android/apps/auto/aareceiver/video/ProjectionRenderer$VideoFrameHandler", "lambda$configureAndStart$0", 258, "ProjectionRenderer.java")).n("failed to reinit codec");
                    }
                }
                bgo bgoVar = bgyVar2.e.c;
                byte[] bArr2 = new byte[byteBuffer.capacity()];
                byte[] bArr3 = new byte[byteBuffer.capacity()];
                int i9 = 1;
                if (byteBuffer.capacity() == 0) {
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                } else {
                    if (byteBuffer.getInt(0) != 1) {
                        throw new IllegalArgumentException("Received an invalid config for H.264.");
                    }
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                }
                while (i3 < byteBuffer.capacity() - 4) {
                    if (byteBuffer.getInt(i3) != i9) {
                        throw new IllegalArgumentException("Received an invalid config for H.264. Extra data found in config.");
                    }
                    byte b2 = byteBuffer.get(i3 + 4);
                    int i10 = b2 >> 7;
                    if (i10 == 0 && ((b2 + b2) >> 6) != 0 && (b2 & 31) == 7) {
                        if (i4 != 0) {
                            throw new IllegalArgumentException("Received an invalid config for H.264. Multiple sequence parameter sets found.");
                        }
                        i4 = hl.l(byteBuffer, bArr2, i3);
                    } else if (i10 != 0 || ((b2 + b2) >> 6) == 0 || (b2 & 31) != 8) {
                        i6 += hl.l(byteBuffer, null, i3);
                    } else {
                        if (i5 != 0) {
                            throw new IllegalArgumentException("Received an invalid config for H.264. Multiple picture parameter sets found.");
                        }
                        i5 = hl.l(byteBuffer, bArr3, i3);
                    }
                    i9 = 1;
                    i3 = (((i4 + i5) + i6) - 1) + 1;
                }
                if (i4 == 0 || i5 == 0) {
                    String str = i4 == 0 ? " No sequence parameter set found." : "";
                    String str2 = i5 == 0 ? " No picture parameter set found." : "";
                    String valueOf = String.valueOf(str2.length() != 0 ? str.concat(str2) : new String(str));
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Received an invalid config for H.264.".concat(valueOf) : new String("Received an invalid config for H.264."));
                }
                ByteBuffer wrap = ByteBuffer.wrap(Arrays.copyOf(bArr2, i4));
                ByteBuffer wrap2 = ByteBuffer.wrap(Arrays.copyOf(bArr3, i5));
                cqi e2 = cqk.e();
                e2.f(bgn.SEQUENCE_PARAMETER_SET, wrap);
                e2.f(bgn.PICTURE_PARAMETER_SET, wrap2);
                cqk c = e2.c();
                MediaFormat mediaFormat = bgyVar2.e.a;
                mediaFormat.setByteBuffer("csd-0", (ByteBuffer) c.get(bgn.SEQUENCE_PARAMETER_SET));
                mediaFormat.setByteBuffer("csd-1", (ByteBuffer) c.get(bgn.PICTURE_PARAMETER_SET));
                mediaFormat.setInteger("width", i7);
                mediaFormat.setInteger("height", i8);
                if (dky.a.a().a()) {
                    mediaFormat.setInteger("vendor.qti-ext-dec-low-latency.enable", 1);
                    mediaFormat.setInteger("vendor.qti-ext-dec-picture-order.enable", 1);
                }
                mediaCodec.setCallback(bgyVar2, bgyVar2.f);
                mediaCodec.configure(mediaFormat, bgyVar2.d, (MediaCrypto) null, 0);
                mediaCodec.setVideoScalingMode(1);
                mediaCodec.start();
                bgyVar2.g = true;
            }
        });
    }

    public final void d(Surface surface) {
        this.i = new bgy(surface, this.s, this.t, this.q);
        this.j = 1;
    }

    public final synchronized void e() {
        this.e.getHolder().removeCallback(this.r);
        h();
    }

    public final void f(das dasVar) {
        dasVar.d(this.o);
    }

    public final void g(int i, int i2, int i3, int i4) {
        hh.p(this.o, new bgr(this, i, i2, i3, i4), czj.a);
    }

    public final synchronized void h() {
        if (this.j != 3 && this.j != 0) {
            this.j = 3;
            this.i.a();
            this.i = null;
        }
    }

    public final void i(int i, int i2) {
        this.f.set(0, 0, i, i2);
    }

    public final boolean j() {
        return this.j == 2;
    }
}
