package defpackage;

import android.media.MediaCodec;
import android.media.MediaCodecList;
import android.media.MediaFormat;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bgp {
    public static final /* synthetic */ bgp a = new bgp();

    private /* synthetic */ bgp() {
    }

    public final bgu a() {
        csz cszVar = bgz.a;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", "video/avc");
        String findDecoderForFormat = new MediaCodecList(0).findDecoderForFormat(mediaFormat);
        if (findDecoderForFormat != null) {
            return new bgu(mediaFormat, MediaCodec.createByCodecName(findDecoderForFormat), bgo.a);
        }
        throw new RuntimeException("Decoder name could not be found for media format: ".concat(mediaFormat.toString()));
    }
}
