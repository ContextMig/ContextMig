.class Lchan/android/app/pocketnote/util/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/util/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/PreferenceFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5243668e5802f1c5L    # 1.9296747803698506E88

    const-string v2, "chan/android/app/pocketnote/util/PreferenceFragment$2"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/PreferenceFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/util/PreferenceFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iput-object p1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment$2;->this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment$2;->$jacocoInit()[Z

    move-result-object v2

    .line 42
    iget-object v3, p0, Lchan/android/app/pocketnote/util/PreferenceFragment$2;->this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/util/PreferenceFragment;->access$000(Lchan/android/app/pocketnote/util/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v3, v0, Landroid/preference/Preference;

    if-eqz v3, :cond_0

    aput-boolean v4, v2, v4

    .line 45
    iget-object v3, p0, Lchan/android/app/pocketnote/util/PreferenceFragment$2;->this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/util/PreferenceFragment;->access$000(Lchan/android/app/pocketnote/util/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "selectedView":Landroid/view/View;
    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    .line 50
    .end local v1    # "selectedView":Landroid/view/View;
    :goto_0
    return v5

    :cond_0
    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    goto :goto_0
.end method
