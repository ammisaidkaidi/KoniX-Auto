package com.google.android.projection.protocol;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class Radio$RadioStationInfo {
    public int channel;
    public MetaData metaData;
    public int radioType;
    public int subChannel;

    /* compiled from: PG */
    public class MetaData {
        public int audioChannels;
        public RdsData rdsData;
        public int signalQuality;
    }

    /* compiled from: PG */
    public class RdsData {
        public List alternativeFrequencies;
        public int musicSpeechSwitch;
        public int programId;
        public String programServiceName;
        public int programType;
        public String programTypeName;
        public String radioText;
        public boolean trafficAnnouncementFlag;
        public boolean trafficProgramFlag;
    }
}
