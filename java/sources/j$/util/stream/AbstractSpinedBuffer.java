package j$.util.stream;

/* loaded from: classes2.dex */
abstract class AbstractSpinedBuffer {
    protected int elementIndex;
    protected final int initialChunkPower;
    protected long[] priorElementCount;
    protected int spineIndex;

    protected AbstractSpinedBuffer() {
        this.initialChunkPower = 4;
    }

    protected AbstractSpinedBuffer(int i) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Illegal Capacity: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        this.initialChunkPower = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
    }

    public long count() {
        int i = this.spineIndex;
        if (i == 0) {
            return this.elementIndex;
        }
        return this.priorElementCount[i] + this.elementIndex;
    }

    protected int chunkSize(int i) {
        int i2;
        if (i == 0 || i == 1) {
            i2 = this.initialChunkPower;
        } else {
            i2 = Math.min((this.initialChunkPower + i) - 1, 30);
        }
        return 1 << i2;
    }
}
