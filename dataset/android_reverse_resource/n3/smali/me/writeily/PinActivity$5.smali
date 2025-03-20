.class Lme/writeily/PinActivity$5;
.super Ljava/lang/Object;
.source "PinActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/PinActivity;->attachPinListeners()V
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

    sget-object v0, Lme/writeily/PinActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6adae54983c5956fL    # 5.396834942583696E206

    const-string v2, "me/writeily/PinActivity$5"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/PinActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/PinActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/PinActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    iput-object p1, p0, Lme/writeily/PinActivity$5;->this$0:Lme/writeily/PinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/PinActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    iget-object v1, p0, Lme/writeily/PinActivity$5;->this$0:Lme/writeily/PinActivity;

    invoke-static {v1}, Lme/writeily/PinActivity;->access$400(Lme/writeily/PinActivity;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 127
    :goto_0
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    return-void

    .line 124
    :cond_0
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 125
    iget-object v1, p0, Lme/writeily/PinActivity$5;->this$0:Lme/writeily/PinActivity;

    invoke-static {v1}, Lme/writeily/PinActivity;->access$100(Lme/writeily/PinActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/PinActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/PinActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
