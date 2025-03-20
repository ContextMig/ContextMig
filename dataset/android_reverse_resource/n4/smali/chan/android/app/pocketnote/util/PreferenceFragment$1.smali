.class Lchan/android/app/pocketnote/util/PreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    sget-object v0, Lchan/android/app/pocketnote/util/PreferenceFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4223bcbf5dcb0105L    # -1.0281912175120506E-10

    const-string v2, "chan/android/app/pocketnote/util/PreferenceFragment$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/PreferenceFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/util/PreferenceFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iput-object p1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment$1;->this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment$1;->this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/PreferenceFragment;->access$000(Lchan/android/app/pocketnote/util/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/util/PreferenceFragment$1;->this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/util/PreferenceFragment;->access$000(Lchan/android/app/pocketnote/util/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 34
    aput-boolean v3, v0, v3

    return-void
.end method
