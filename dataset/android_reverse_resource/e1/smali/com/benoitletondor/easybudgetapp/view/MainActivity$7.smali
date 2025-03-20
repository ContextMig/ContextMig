.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;
.super Lcom/roomorama/caldroid/CaldroidListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity;->initCalendarFragment(Landroid/os/Bundle;)V
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2b9afbe229fb5dedL    # -3.591205998730298E98

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$7"

    const/16 v3, 0x2d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 855
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {p0}, Lcom/roomorama/caldroid/CaldroidListener;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCaldroidViewCreated()V
    .locals 15

    .prologue
    const/high16 v14, 0x41c80000    # 25.0f

    const v13, 0x106000b

    const/16 v12, 0x11

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->$jacocoInit()[Z

    move-result-object v3

    .line 895
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getLeftArrowButton()Landroid/widget/Button;

    move-result-object v4

    const/16 v1, 0xf

    aput-boolean v10, v3, v1

    .line 896
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getRightArrowButton()Landroid/widget/Button;

    move-result-object v5

    const/16 v1, 0x10

    aput-boolean v10, v3, v1

    .line 897
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getMonthTitleTextView()Landroid/widget/TextView;

    move-result-object v6

    aput-boolean v10, v3, v12

    .line 898
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getWeekdayGridView()Landroid/widget/GridView;

    move-result-object v7

    const/16 v1, 0x12

    aput-boolean v10, v3, v1

    .line 899
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const v2, 0x7f0f00a3

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x13

    aput-boolean v10, v3, v2

    .line 901
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 902
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v2, 0x14

    aput-boolean v10, v3, v2

    .line 903
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0a005c

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v11, v11, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0x15

    aput-boolean v10, v3, v2

    .line 904
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x16

    aput-boolean v10, v3, v2

    .line 906
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0a005b

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v8, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v8}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a005a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v1, v11, v2, v11, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x17

    aput-boolean v10, v3, v2

    .line 908
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x18

    aput-boolean v10, v3, v8

    .line 909
    iget-object v8, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v8}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2, v8, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v8, 0x19

    aput-boolean v10, v3, v8

    .line 910
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x1a

    aput-boolean v10, v3, v2

    .line 912
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1b

    aput-boolean v10, v3, v8

    .line 913
    iget-object v8, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v8}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2, v11, v11, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v8, 0x1c

    aput-boolean v10, v3, v8

    .line 914
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x1d

    aput-boolean v10, v3, v2

    .line 916
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x1e

    aput-boolean v10, v3, v2

    .line 917
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const v6, 0x7f0e005d

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v1, 0x1f

    aput-boolean v10, v3, v1

    .line 919
    const-string v1, "<"

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x20

    aput-boolean v10, v3, v1

    .line 920
    invoke-virtual {v4, v14}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v1, 0x21

    aput-boolean v10, v3, v1

    .line 921
    invoke-virtual {v4, v12}, Landroid/widget/Button;->setGravity(I)V

    const/16 v1, 0x22

    aput-boolean v10, v3, v1

    .line 922
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v1, 0x23

    aput-boolean v10, v3, v1

    .line 923
    const v1, 0x7f020058

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v1, 0x24

    aput-boolean v10, v3, v1

    .line 925
    const-string v1, ">"

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x25

    aput-boolean v10, v3, v1

    .line 926
    invoke-virtual {v5, v14}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v1, 0x26

    aput-boolean v10, v3, v1

    .line 927
    invoke-virtual {v5, v12}, Landroid/widget/Button;->setGravity(I)V

    const/16 v1, 0x27

    aput-boolean v10, v3, v1

    .line 928
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v1, 0x28

    aput-boolean v10, v3, v1

    .line 929
    const v1, 0x7f020058

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v1, 0x29

    aput-boolean v10, v3, v1

    .line 931
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a005e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7, v11, v1, v11, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    const/16 v1, 0x2a

    aput-boolean v10, v3, v1

    .line 934
    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->removeButtonBorder(Landroid/widget/Button;)V

    const/16 v1, 0x2b

    aput-boolean v10, v3, v1

    .line 935
    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->removeButtonBorder(Landroid/widget/Button;)V

    .line 936
    const/16 v1, 0x2c

    aput-boolean v10, v3, v1

    return-void
.end method

.method public onChangeMonth(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 885
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    .line 886
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    .line 887
    invoke-virtual {v1, v3, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    .line 889
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->loadMonth(Ljava/util/Date;)V

    .line 890
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onLongClickDate(Ljava/util/Date;Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 865
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const-class v3, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-boolean v6, v0, v7

    .line 866
    const-string v2, "date"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    .line 868
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    aput-boolean v6, v0, v2

    .line 879
    :goto_0
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 880
    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    return-void

    .line 871
    :cond_0
    new-array v2, v7, [I

    const/4 v3, 0x5

    aput-boolean v6, v0, v3

    .line 872
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x6

    aput-boolean v6, v0, v3

    .line 874
    const-string v3, "animate"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x7

    aput-boolean v6, v0, v3

    .line 875
    const-string v3, "centerX"

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v3, 0x8

    aput-boolean v6, v0, v3

    .line 876
    const-string v3, "centerY"

    aget v2, v2, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x9

    aput-boolean v6, v0, v2

    goto :goto_0
.end method

.method public onSelectDate(Ljava/util/Date;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 859
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$500(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V

    .line 860
    aput-boolean v2, v0, v2

    return-void
.end method
