.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity;->initRecyclerView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x635171a49cbffaaaL    # 2.6333076481441456E170

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$10"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->$jacocoInit()[Z

    move-result-object v0

    .line 1033
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x3f99999a    # 1.2f

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->$jacocoInit()[Z

    move-result-object v0

    .line 1037
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const-class v3, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-boolean v6, v0, v6

    .line 1038
    const-string v2, "date"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getSelectedDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    .line 1040
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    .line 1047
    :goto_0
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    .line 1049
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$700(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 1050
    const/16 v1, 0x9

    aput-boolean v6, v0, v1

    return-void

    .line 1040
    :cond_0
    const/4 v2, 0x4

    aput-boolean v6, v0, v2

    .line 1042
    const-string v2, "animate"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x5

    aput-boolean v6, v0, v2

    .line 1043
    const-string v2, "centerX"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$700(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$700(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 1044
    const-string v2, "centerY"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$700(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$10;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$700(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    goto :goto_0
.end method
