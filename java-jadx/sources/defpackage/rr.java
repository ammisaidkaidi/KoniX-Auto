package defpackage;

import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class rr {
    static final int FLAG_ADAPTER_FULLUPDATE = 1024;
    static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
    static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
    static final int FLAG_BOUND = 1;
    static final int FLAG_IGNORE = 128;
    static final int FLAG_INVALID = 4;
    static final int FLAG_MOVED = 2048;
    static final int FLAG_NOT_RECYCLABLE = 16;
    static final int FLAG_REMOVED = 8;
    static final int FLAG_RETURNED_FROM_SCRAP = 32;
    static final int FLAG_TMP_DETACHED = 256;
    static final int FLAG_UPDATE = 2;
    private static final List FULLUPDATE_PAYLOADS = Collections.emptyList();
    static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
    public final View itemView;
    qq mBindingAdapter;
    int mFlags;
    public WeakReference mNestedRecyclerView;
    RecyclerView mOwnerRecyclerView;
    public int mPosition = PENDING_ACCESSIBILITY_STATE_NOT_SET;
    public int mOldPosition = PENDING_ACCESSIBILITY_STATE_NOT_SET;
    long mItemId = -1;
    int mItemViewType = PENDING_ACCESSIBILITY_STATE_NOT_SET;
    int mPreLayoutPosition = PENDING_ACCESSIBILITY_STATE_NOT_SET;
    public rr mShadowedHolder = null;
    public rr mShadowingHolder = null;
    List mPayloads = null;
    List mUnmodifiedPayloads = null;
    private int mIsRecyclableCount = 0;
    rh mScrapContainer = null;
    boolean mInChangeScrap = false;
    private int mWasImportantForAccessibilityBeforeHidden = 0;
    public int mPendingAccessibilityState = PENDING_ACCESSIBILITY_STATE_NOT_SET;

    public rr(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.itemView = view;
    }

    private void createPayloadsIfNeeded() {
        if (this.mPayloads == null) {
            ArrayList arrayList = new ArrayList();
            this.mPayloads = arrayList;
            this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
        }
    }

    public void addChangePayload(Object obj) {
        if (obj == null) {
            addFlags(FLAG_ADAPTER_FULLUPDATE);
        } else if ((FLAG_ADAPTER_FULLUPDATE & this.mFlags) == 0) {
            createPayloadsIfNeeded();
            this.mPayloads.add(obj);
        }
    }

    public void addFlags(int i) {
        this.mFlags = i | this.mFlags;
    }

    public void clearOldPosition() {
        this.mOldPosition = PENDING_ACCESSIBILITY_STATE_NOT_SET;
        this.mPreLayoutPosition = PENDING_ACCESSIBILITY_STATE_NOT_SET;
    }

    public void clearPayload() {
        List list = this.mPayloads;
        if (list != null) {
            list.clear();
        }
        this.mFlags &= -1025;
    }

    public void clearReturnedFromScrapFlag() {
        this.mFlags &= -33;
    }

    public void clearTmpDetachFlag() {
        this.mFlags &= -257;
    }

    public boolean doesTransientStatePreventRecycling() {
        return (this.mFlags & FLAG_NOT_RECYCLABLE) == 0 && hs.E(this.itemView);
    }

    public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
        addFlags(FLAG_REMOVED);
        offsetPosition(i2, z);
        this.mPosition = i;
    }

    public final int getAbsoluteAdapterPosition() {
        RecyclerView recyclerView = this.mOwnerRecyclerView;
        return recyclerView == null ? PENDING_ACCESSIBILITY_STATE_NOT_SET : recyclerView.a(this);
    }

    @Deprecated
    public final int getAdapterPosition() {
        return getBindingAdapterPosition();
    }

    public final qq getBindingAdapter() {
        return this.mBindingAdapter;
    }

    public final int getBindingAdapterPosition() {
        RecyclerView recyclerView;
        qq e;
        int a;
        return (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (e = recyclerView.e()) == null || (a = this.mOwnerRecyclerView.a(this)) == PENDING_ACCESSIBILITY_STATE_NOT_SET) ? PENDING_ACCESSIBILITY_STATE_NOT_SET : e.findRelativeAdapterPositionIn(this.mBindingAdapter, this, a);
    }

    public final long getItemId() {
        return this.mItemId;
    }

    public final int getItemViewType() {
        return this.mItemViewType;
    }

    public final int getLayoutPosition() {
        int i = this.mPreLayoutPosition;
        return i == PENDING_ACCESSIBILITY_STATE_NOT_SET ? this.mPosition : i;
    }

    public final int getOldPosition() {
        return this.mOldPosition;
    }

    @Deprecated
    public final int getPosition() {
        int i = this.mPreLayoutPosition;
        return i == PENDING_ACCESSIBILITY_STATE_NOT_SET ? this.mPosition : i;
    }

    public List getUnmodifiedPayloads() {
        if ((this.mFlags & FLAG_ADAPTER_FULLUPDATE) != 0) {
            return FULLUPDATE_PAYLOADS;
        }
        List list = this.mPayloads;
        return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
    }

    public boolean hasAnyOfTheFlags(int i) {
        return (i & this.mFlags) != 0;
    }

    public boolean isAdapterPositionUnknown() {
        return (this.mFlags & FLAG_ADAPTER_POSITION_UNKNOWN) != 0 || isInvalid();
    }

    public boolean isAttachedToTransitionOverlay() {
        return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
    }

    public boolean isBound() {
        return (this.mFlags & 1) != 0;
    }

    public boolean isInvalid() {
        return (this.mFlags & 4) != 0;
    }

    public final boolean isRecyclable() {
        return (this.mFlags & FLAG_NOT_RECYCLABLE) == 0 && !hs.E(this.itemView);
    }

    public boolean isRemoved() {
        return (this.mFlags & FLAG_REMOVED) != 0;
    }

    public boolean isScrap() {
        return this.mScrapContainer != null;
    }

    public boolean isTmpDetached() {
        return (this.mFlags & FLAG_TMP_DETACHED) != 0;
    }

    public boolean isUpdated() {
        return (this.mFlags & 2) != 0;
    }

    public boolean needsUpdate() {
        return (this.mFlags & 2) != 0;
    }

    public void offsetPosition(int i, boolean z) {
        if (this.mOldPosition == PENDING_ACCESSIBILITY_STATE_NOT_SET) {
            this.mOldPosition = this.mPosition;
        }
        int i2 = this.mPreLayoutPosition;
        if (i2 == PENDING_ACCESSIBILITY_STATE_NOT_SET) {
            i2 = this.mPosition;
            this.mPreLayoutPosition = i2;
        }
        if (z) {
            this.mPreLayoutPosition = i2 + i;
        }
        this.mPosition += i;
        if (this.itemView.getLayoutParams() != null) {
            ((rb) this.itemView.getLayoutParams()).e = true;
        }
    }

    public void onLeftHiddenState(RecyclerView recyclerView) {
        recyclerView.am(this, this.mWasImportantForAccessibilityBeforeHidden);
        this.mWasImportantForAccessibilityBeforeHidden = 0;
    }

    public void resetInternal() {
        this.mFlags = 0;
        this.mPosition = PENDING_ACCESSIBILITY_STATE_NOT_SET;
        this.mOldPosition = PENDING_ACCESSIBILITY_STATE_NOT_SET;
        this.mItemId = -1L;
        this.mPreLayoutPosition = PENDING_ACCESSIBILITY_STATE_NOT_SET;
        this.mIsRecyclableCount = 0;
        this.mShadowedHolder = null;
        this.mShadowingHolder = null;
        clearPayload();
        this.mWasImportantForAccessibilityBeforeHidden = 0;
        this.mPendingAccessibilityState = PENDING_ACCESSIBILITY_STATE_NOT_SET;
        RecyclerView.s(this);
    }

    public void saveOldPosition() {
        if (this.mOldPosition == PENDING_ACCESSIBILITY_STATE_NOT_SET) {
            this.mOldPosition = this.mPosition;
        }
    }

    public void setFlags(int i, int i2) {
        this.mFlags = (i & i2) | (this.mFlags & (i2 ^ PENDING_ACCESSIBILITY_STATE_NOT_SET));
    }

    public final void setIsRecyclable(boolean z) {
        int i = this.mIsRecyclableCount;
        int i2 = z ? i + PENDING_ACCESSIBILITY_STATE_NOT_SET : i + 1;
        this.mIsRecyclableCount = i2;
        if (i2 < 0) {
            this.mIsRecyclableCount = 0;
            StringBuilder sb = new StringBuilder();
            sb.append("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ");
            sb.append(this);
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ".concat(toString()));
            return;
        }
        if (!z && i2 == 1) {
            this.mFlags |= FLAG_NOT_RECYCLABLE;
        } else if (z && i2 == 0) {
            this.mFlags &= -17;
        }
    }

    public void setScrapContainer(rh rhVar, boolean z) {
        this.mScrapContainer = rhVar;
        this.mInChangeScrap = z;
    }

    public boolean shouldBeKeptAsChild() {
        return (this.mFlags & FLAG_NOT_RECYCLABLE) != 0;
    }

    public boolean shouldIgnore() {
        return (this.mFlags & FLAG_IGNORE) != 0;
    }

    void stopIgnoring() {
        this.mFlags &= -129;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
        if (isScrap()) {
            sb.append(" scrap ");
            sb.append(true != this.mInChangeScrap ? "[attachedScrap]" : "[changeScrap]");
        }
        if (isInvalid()) {
            sb.append(" invalid");
        }
        if (!isBound()) {
            sb.append(" unbound");
        }
        if (needsUpdate()) {
            sb.append(" update");
        }
        if (isRemoved()) {
            sb.append(" removed");
        }
        if (shouldIgnore()) {
            sb.append(" ignored");
        }
        if (isTmpDetached()) {
            sb.append(" tmpDetached");
        }
        if (!isRecyclable()) {
            sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
        }
        if (isAdapterPositionUnknown()) {
            sb.append(" undefined adapter position");
        }
        if (this.itemView.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }

    public void unScrap() {
        this.mScrapContainer.l(this);
    }

    public boolean wasReturnedFromScrap() {
        return (this.mFlags & FLAG_RETURNED_FROM_SCRAP) != 0;
    }

    public void onEnteredHiddenState(RecyclerView recyclerView) {
        int i = this.mPendingAccessibilityState;
        if (i != PENDING_ACCESSIBILITY_STATE_NOT_SET) {
            this.mWasImportantForAccessibilityBeforeHidden = i;
        } else {
            this.mWasImportantForAccessibilityBeforeHidden = hs.a(this.itemView);
        }
        recyclerView.am(this, 4);
    }
}
