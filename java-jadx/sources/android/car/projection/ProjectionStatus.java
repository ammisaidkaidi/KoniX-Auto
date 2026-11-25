package android.car.projection;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class ProjectionStatus implements Parcelable {
    public static final Parcelable.Creator<ProjectionStatus> CREATOR = new Parcelable.Creator<ProjectionStatus>() { // from class: android.car.projection.ProjectionStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProjectionStatus createFromParcel(Parcel parcel) {
            return ProjectionStatus.builder(parcel.readString(), parcel.readInt()).setProjectionTransport(parcel.readInt()).setExtras(parcel.readBundle()).build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProjectionStatus[] newArray(int i) {
            return new ProjectionStatus[i];
        }
    };
    public static final int PROJECTION_STATE_ACTIVE_BACKGROUND = 3;
    public static final int PROJECTION_STATE_ACTIVE_FOREGROUND = 2;
    public static final int PROJECTION_STATE_INACTIVE = 0;
    public static final int PROJECTION_STATE_READY_TO_PROJECT = 1;
    public static final int PROJECTION_TRANSPORT_NONE = 0;
    public static final int PROJECTION_TRANSPORT_USB = 1;
    public static final int PROJECTION_TRANSPORT_WIFI = 2;
    private final List<MobileDevice> mConnectedMobileDevices;
    private final Bundle mExtras;
    private final String mPackageName;
    private final int mState;
    private final int mTransport;

    private ProjectionStatus(Builder builder) {
        this.mPackageName = builder.mPackageName;
        this.mState = builder.mState;
        this.mTransport = builder.mTransport;
        this.mExtras = builder.mExtras != null ? new Bundle(builder.mExtras) : new Bundle();
        this.mConnectedMobileDevices = new ArrayList(builder.mMobileDevices);
    }

    public static Builder builder(String str, int i) {
        return new Builder(str, i);
    }

    public int getState() {
        return this.mState;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public int getTransport() {
        return this.mTransport;
    }

    public Bundle getExtras() {
        return new Bundle(this.mExtras);
    }

    public List<MobileDevice> getConnectedMobileDevices() {
        return new ArrayList(this.mConnectedMobileDevices);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mState);
        parcel.writeInt(this.mTransport);
        parcel.writeBundle(this.mExtras);
    }

    public String toString() {
        return "ProjectionStatus{pkg=" + this.mPackageName + ", state=" + this.mState + ", transport=" + this.mTransport + ", devices=" + this.mConnectedMobileDevices.size() + "}";
    }

    public static final class Builder {
        private Bundle mExtras;
        private final List<MobileDevice> mMobileDevices;
        private final String mPackageName;
        private final int mState;
        private int mTransport;

        private Builder(String str, int i) {
            this.mTransport = 0;
            this.mMobileDevices = new ArrayList();
            this.mPackageName = str;
            this.mState = i;
        }

        public Builder setProjectionTransport(int i) {
            this.mTransport = i;
            return this;
        }

        public Builder addMobileDevice(MobileDevice mobileDevice) {
            if (mobileDevice != null) {
                this.mMobileDevices.add(mobileDevice);
            }
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public ProjectionStatus build() {
            return new ProjectionStatus(this);
        }
    }

    public static final class MobileDevice implements Parcelable {
        public static final Parcelable.Creator<MobileDevice> CREATOR = new Parcelable.Creator<MobileDevice>() { // from class: android.car.projection.ProjectionStatus.MobileDevice.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MobileDevice createFromParcel(Parcel parcel) {
                return MobileDevice.builder(parcel.readInt(), parcel.readString()).setProjecting(parcel.readInt() != 0).setExtras(parcel.readBundle()).build();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MobileDevice[] newArray(int i) {
                return new MobileDevice[i];
            }
        };
        private final List<Integer> mAvailableTransports;
        private final Bundle mExtras;
        private final int mId;
        private final String mName;
        private final boolean mProjecting;

        private MobileDevice(Builder builder) {
            this.mId = builder.mId;
            this.mName = builder.mName;
            this.mAvailableTransports = new ArrayList(builder.mTransports);
            this.mProjecting = builder.mProjecting;
            this.mExtras = builder.mExtras != null ? new Bundle(builder.mExtras) : new Bundle();
        }

        public static Builder builder(int i, String str) {
            return new Builder(i, str);
        }

        public int getId() {
            return this.mId;
        }

        public String getName() {
            return this.mName;
        }

        public List<Integer> getAvailableTransports() {
            return new ArrayList(this.mAvailableTransports);
        }

        public boolean isProjecting() {
            return this.mProjecting;
        }

        public Bundle getExtras() {
            return new Bundle(this.mExtras);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mId);
            parcel.writeString(this.mName);
            parcel.writeInt(this.mProjecting ? 1 : 0);
            parcel.writeBundle(this.mExtras);
        }

        public static final class Builder {
            private Bundle mExtras;
            private final int mId;
            private final String mName;
            private boolean mProjecting;
            private final List<Integer> mTransports;

            private Builder(int i, String str) {
                this.mTransports = new ArrayList();
                this.mId = i;
                this.mName = str;
            }

            public Builder addTransport(int i) {
                this.mTransports.add(Integer.valueOf(i));
                return this;
            }

            public Builder setProjecting(boolean z) {
                this.mProjecting = z;
                return this;
            }

            public Builder setExtras(Bundle bundle) {
                this.mExtras = bundle;
                return this;
            }

            public MobileDevice build() {
                return new MobileDevice(this);
            }
        }
    }
}
