.class public abstract Lcom/benoitletondor/easybudgetapp/view/DBActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DBActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field protected db:Lcom/benoitletondor/easybudgetapp/model/db/DB;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x663f954ba24a6d0cL    # 3.3550059328486362E184

    const-string v2, "com/benoitletondor/easybudgetapp/view/DBActivity"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v0, v3

    .line 43
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/benoitletondor/easybudgetapp/model/db/DB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    .line 44
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->close()V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 51
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 52
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method
