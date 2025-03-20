.class public abstract Lchan/android/app/pocketnote/util/PreferenceFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/util/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x23de2f3ca3352650L

    const-string v2, "chan/android/app/pocketnote/util/PreferenceFragment"

    const/16 v3, 0x44

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 31
    new-instance v1, Lchan/android/app/pocketnote/util/PreferenceFragment$1;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/util/PreferenceFragment$1;-><init>(Lchan/android/app/pocketnote/util/PreferenceFragment;)V

    iput-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    aput-boolean v2, v0, v2

    .line 38
    new-instance v1, Lchan/android/app/pocketnote/util/PreferenceFragment$2;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/util/PreferenceFragment$2;-><init>(Lchan/android/app/pocketnote/util/PreferenceFragment;)V

    iput-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 54
    new-instance v1, Lchan/android/app/pocketnote/util/PreferenceFragment$3;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/util/PreferenceFragment$3;-><init>(Lchan/android/app/pocketnote/util/PreferenceFragment;)V

    iput-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/util/PreferenceFragment;)Landroid/widget/ListView;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/16 v2, 0x42

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/util/PreferenceFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->bindPreferences()V

    const/16 v1, 0x43

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private bindPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 243
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-nez v0, :cond_0

    const/16 v2, 0x34

    aput-boolean v3, v1, v2

    .line 246
    :goto_0
    const/16 v2, 0x37

    aput-boolean v3, v1, v2

    return-void

    .line 243
    :cond_0
    const/16 v2, 0x35

    aput-boolean v3, v1, v2

    .line 244
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    const/16 v2, 0x36

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private ensureList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 254
    iget-object v3, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 255
    const/16 v3, 0x39

    aput-boolean v5, v2, v3

    .line 277
    .local v1, "root":Landroid/view/View;
    :goto_0
    return-void

    .line 257
    .end local v1    # "root":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 258
    .restart local v1    # "root":Landroid/view/View;
    if-nez v1, :cond_1

    const/16 v3, 0x3a

    aput-boolean v5, v2, v3

    .line 259
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3b

    aput-boolean v5, v2, v4

    throw v3

    .line 261
    :cond_1
    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "rawListView":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/ListView;

    if-nez v3, :cond_2

    const/16 v3, 0x3c

    aput-boolean v5, v2, v3

    .line 263
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3d

    aput-boolean v5, v2, v4

    throw v3

    .line 268
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 269
    iget-object v3, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v3, :cond_3

    const/16 v3, 0x3e

    aput-boolean v5, v2, v3

    .line 270
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3f

    aput-boolean v5, v2, v4

    throw v3

    .line 275
    :cond_3
    iget-object v3, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/16 v3, 0x40

    aput-boolean v5, v2, v3

    .line 276
    iget-object v3, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    const/16 v3, 0x41

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 237
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    aput-boolean v2, v0, v1

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 239
    const/16 v1, 0x33

    aput-boolean v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 249
    invoke-direct {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->ensureList()V

    .line 250
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->getPreferenceScreen(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/16 v2, 0x27

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 80
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    iget-boolean v3, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mHavePrefs:Z

    if-nez v3, :cond_0

    const/16 v3, 0x8

    aput-boolean v4, v2, v3

    .line 86
    :goto_0
    iput-boolean v4, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mInitDone:Z

    .line 88
    if-nez p1, :cond_1

    const/16 v3, 0xb

    aput-boolean v4, v2, v3

    .line 97
    .local v0, "container":Landroid/os/Bundle;
    :goto_1
    const/16 v3, 0x12

    aput-boolean v4, v2, v3

    return-void

    .line 82
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    const/16 v3, 0x9

    aput-boolean v4, v2, v3

    .line 83
    invoke-direct {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->bindPreferences()V

    const/16 v3, 0xa

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 88
    :cond_1
    const/16 v3, 0xc

    aput-boolean v4, v2, v3

    .line 89
    const-string v3, "android:preferences"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .restart local v0    # "container":Landroid/os/Bundle;
    if-nez v0, :cond_2

    const/16 v3, 0xd

    aput-boolean v4, v2, v3

    goto :goto_1

    :cond_2
    const/16 v3, 0xe

    aput-boolean v4, v2, v3

    .line 91
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 92
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-nez v1, :cond_3

    const/16 v3, 0xf

    aput-boolean v4, v2, v3

    goto :goto_1

    :cond_3
    const/16 v3, 0x10

    aput-boolean v4, v2, v3

    .line 93
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    const/16 v3, 0x11

    aput-boolean v4, v2, v3

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    .line 142
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v1, p1, p2, p3}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->dispatchActivityResult(Landroid/preference/PreferenceManager;IILandroid/content/Intent;)V

    .line 143
    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 69
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->newInstance(Landroid/app/Activity;I)Landroid/preference/PreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 70
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v1, p0}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->setFragment(Landroid/preference/PreferenceManager;Lchan/android/app/pocketnote/util/PreferenceFragment;)V

    .line 71
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    .line 123
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->dispatchActivityDestroy(Landroid/preference/PreferenceManager;)V

    .line 124
    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    .line 115
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    .line 116
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    .line 117
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 118
    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 208
    const/16 v0, 0x2e

    aput-boolean v3, v1, v0

    .line 209
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lchan/android/app/pocketnote/util/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    aput-boolean v3, v1, v0

    .line 210
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/util/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lchan/android/app/pocketnote/util/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lchan/android/app/pocketnote/util/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result v0

    const/16 v2, 0x30

    aput-boolean v3, v1, v2

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x31

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 128
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/16 v2, 0x1e

    aput-boolean v4, v1, v2

    .line 130
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 131
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-nez v0, :cond_0

    const/16 v2, 0x1f

    aput-boolean v4, v1, v2

    .line 136
    :goto_0
    const/16 v2, 0x24

    aput-boolean v4, v1, v2

    return-void

    .line 131
    :cond_0
    const/16 v2, 0x20

    aput-boolean v4, v1, v2

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x21

    aput-boolean v4, v1, v3

    .line 133
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    const/16 v3, 0x22

    aput-boolean v4, v1, v3

    .line 134
    const-string v3, "android:preferences"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v2, 0x23

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 102
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v1, p0}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V

    .line 103
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    .line 108
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->dispatchActivityStop(Landroid/preference/PreferenceManager;)V

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    .line 109
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Lchan/android/app/pocketnote/util/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V

    .line 110
    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 170
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v1, p1}, Lchan/android/app/pocketnote/util/PreferenceManagerCompat;->setPreferences(Landroid/preference/PreferenceManager;Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    .line 176
    :goto_0
    const/16 v1, 0x2d

    aput-boolean v2, v0, v1

    return-void

    .line 170
    :cond_0
    if-nez p1, :cond_1

    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 171
    :cond_1
    iput-boolean v2, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mHavePrefs:Z

    .line 172
    iget-boolean v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment;->mInitDone:Z

    if-nez v1, :cond_2

    const/16 v1, 0x2a

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x2b

    aput-boolean v2, v0, v1

    .line 173
    invoke-direct {p0}, Lchan/android/app/pocketnote/util/PreferenceFragment;->postBindPreferences()V

    const/16 v1, 0x2c

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
