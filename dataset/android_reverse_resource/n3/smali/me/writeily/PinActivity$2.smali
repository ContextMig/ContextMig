.class Lme/writeily/PinActivity$2;
.super Ljava/lang/Object;
.source "PinActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/PinActivity;->attachPinKeyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/PinActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/PinActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x44bf4296aee92a18L    # 1.4762170394994247E23

    const-string v2, "me/writeily/PinActivity$2"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/PinActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/PinActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/PinActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 83
    iput-object p1, p0, Lme/writeily/PinActivity$2;->this$0:Lme/writeily/PinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/PinActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    if-nez p2, :cond_0

    aput-boolean v3, v0, v3

    .line 89
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 86
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 87
    iget-object v1, p0, Lme/writeily/PinActivity$2;->this$0:Lme/writeily/PinActivity;

    invoke-static {v1}, Lme/writeily/PinActivity;->access$100(Lme/writeily/PinActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
