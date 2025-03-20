.class Lchan/android/app/pocketnote/util/PreferenceFragment$3;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


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

    sget-object v0, Lchan/android/app/pocketnote/util/PreferenceFragment$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x72137d207e66d7d5L

    const-string v2, "chan/android/app/pocketnote/util/PreferenceFragment$3"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/PreferenceFragment$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/util/PreferenceFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iput-object p1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment$3;->this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/PreferenceFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    aput-boolean v2, v0, v2

    .line 63
    :goto_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void

    .line 60
    :pswitch_0
    iget-object v1, p0, Lchan/android/app/pocketnote/util/PreferenceFragment$3;->this$0:Lchan/android/app/pocketnote/util/PreferenceFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/PreferenceFragment;->access$100(Lchan/android/app/pocketnote/util/PreferenceFragment;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
