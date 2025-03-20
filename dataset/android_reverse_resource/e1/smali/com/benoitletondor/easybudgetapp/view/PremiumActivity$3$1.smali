.class Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;
.super Ljava/lang/Object;
.source "PremiumActivity.java"

# interfaces
.implements Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;

.field final synthetic val$loading:Landroid/app/ProgressDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2a742dae9b4f8feaL    # -1.2462636065748998E104

    const-string v2, "com/benoitletondor/easybudgetapp/view/PremiumActivity$3$1"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;Landroid/app/ProgressDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->val$loading:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPurchaseError(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->val$loading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 128
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004d

    const/4 v3, 0x3

    aput-boolean v6, v0, v3

    .line 129
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    const/4 v3, 0x4

    aput-boolean v6, v0, v3

    .line 130
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08004c

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080060

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;)V

    const/4 v4, 0x5

    aput-boolean v6, v0, v4

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 139
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 140
    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    return-void
.end method

.method public onPurchaseSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->$jacocoInit()[Z

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->val$loading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 146
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->setResult(I)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 147
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->finish()V

    .line 148
    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onUserCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3$1;->val$loading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    aput-boolean v2, v0, v2

    return-void
.end method
