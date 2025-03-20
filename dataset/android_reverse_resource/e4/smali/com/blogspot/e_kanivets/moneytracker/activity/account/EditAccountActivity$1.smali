.class Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2d90e28c27a97130L    # -1.2379389458185155E89

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    iget-object v1, v1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    invoke-static {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->delete(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->setResult(I)V

    .line 132
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->finish()V

    .line 133
    aput-boolean v3, v0, v3

    return-void
.end method
