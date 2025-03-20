.class Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6de639b86f84155aL

    const-string v2, "com/benoitletondor/easybudgetapp/view/WelcomeActivity$3"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 162
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/16 v3, 0x15

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    const-string v1, "welcome.pager.next"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v6, v0, v6

    .line 189
    :goto_0
    const-string v1, "welcome.pager.previous"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    .line 193
    :goto_1
    const-string v1, "welcome.pager.done"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x12

    aput-boolean v6, v0, v1

    .line 199
    :goto_2
    const/16 v1, 0x17

    aput-boolean v6, v0, v1

    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 168
    const-string v1, "animate"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    .line 186
    :goto_3
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    goto :goto_2

    .line 168
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_3

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    .line 171
    const-string v1, "centerX"

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 172
    const-string v2, "centerY"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x8

    aput-boolean v6, v0, v3

    .line 175
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x9

    aput-boolean v6, v0, v4

    .line 178
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    const/4 v5, 0x0

    int-to-float v3, v3

    invoke-static {v4, v1, v2, v5, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    const/16 v2, 0xa

    aput-boolean v6, v0, v2

    .line 181
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/16 v2, 0xb

    aput-boolean v6, v0, v2

    .line 182
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 183
    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    goto/16 :goto_2

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-gtz v1, :cond_5

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    .line 191
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/16 v1, 0x11

    aput-boolean v6, v0, v1

    goto/16 :goto_2

    .line 193
    :cond_6
    const/16 v1, 0x13

    aput-boolean v6, v0, v1

    .line 195
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$100(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;I)V

    const/16 v1, 0x14

    aput-boolean v6, v0, v1

    .line 196
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->setResult(I)V

    aput-boolean v6, v0, v3

    .line 197
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->finish()V

    const/16 v1, 0x16

    aput-boolean v6, v0, v1

    goto/16 :goto_2
.end method
