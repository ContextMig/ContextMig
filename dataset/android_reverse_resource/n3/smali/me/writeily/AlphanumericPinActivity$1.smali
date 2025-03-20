.class Lme/writeily/AlphanumericPinActivity$1;
.super Ljava/lang/Object;
.source "AlphanumericPinActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/AlphanumericPinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/AlphanumericPinActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/AlphanumericPinActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xe6ddc8bc1be5a2eL    # -1.1811301723569334E239

    const-string v2, "me/writeily/AlphanumericPinActivity$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/AlphanumericPinActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/AlphanumericPinActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/AlphanumericPinActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iput-object p1, p0, Lme/writeily/AlphanumericPinActivity$1;->this$0:Lme/writeily/AlphanumericPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/AlphanumericPinActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lme/writeily/AlphanumericPinActivity$1;->this$0:Lme/writeily/AlphanumericPinActivity;

    invoke-static {v1}, Lme/writeily/AlphanumericPinActivity;->access$000(Lme/writeily/AlphanumericPinActivity;)V

    .line 56
    aput-boolean v2, v0, v2

    return v2
.end method
