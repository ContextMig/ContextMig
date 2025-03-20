.class public Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;
.super Ljava/lang/Object;
.source "AddRecordUiDecorator.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private dialogTheme:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private greenDarkColor:I

.field private greenLightColor:I

.field private redDarkColor:I

.field private redLightColor:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4299a9f4ef0f6c6bL    # -6.348303246672794E-13

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->$jacocoInit()[Z

    move-result-object v1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v2, -0x1

    iput v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->dialogTheme:I

    .line 37
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->activity:Landroid/app/Activity;

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    .local v0, "resources":Landroid/content/res/Resources;
    const v2, 0x7f06005a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->redLightColor:I

    .line 41
    const v2, 0x7f060059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->redDarkColor:I

    .line 42
    const v2, 0x7f06003c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->greenLightColor:I

    .line 43
    const v2, 0x7f06003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->greenDarkColor:I

    .line 44
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method


# virtual methods
.method public decorateActionBar(Landroid/support/v7/app/ActionBar;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;I)V
    .locals 7
    .param p1    # Landroid/support/v7/app/ActionBar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v6, 0x15

    const/high16 v5, -0x80000000

    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->$jacocoInit()[Z

    move-result-object v1

    .line 80
    if-nez p1, :cond_0

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .line 112
    .local v0, "window":Landroid/view/Window;
    :goto_0
    return-void

    .line 82
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    packed-switch p3, :pswitch_data_0

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    .line 112
    .restart local v0    # "window":Landroid/view/Window;
    :goto_1
    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 84
    .end local v0    # "window":Landroid/view/Window;
    :pswitch_0
    sget-object v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-ne p2, v2, :cond_1

    .line 85
    const v2, 0x7f0e007e

    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 88
    :goto_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->redLightColor:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_2

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    goto :goto_1

    .line 86
    :cond_1
    const v2, 0x7f0e0081

    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    goto :goto_2

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 91
    .restart local v0    # "window":Landroid/view/Window;
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 92
    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->redDarkColor:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 93
    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    goto :goto_1

    .line 97
    .end local v0    # "window":Landroid/view/Window;
    :pswitch_1
    sget-object v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-ne p2, v2, :cond_3

    .line 98
    const v2, 0x7f0e007f

    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    .line 101
    :goto_3
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->greenLightColor:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_4

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    goto :goto_1

    .line 99
    :cond_3
    const v2, 0x7f0e0082

    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    goto :goto_3

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 104
    .restart local v0    # "window":Landroid/view/Window;
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 105
    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->greenDarkColor:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 106
    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    goto/16 :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTheme(I)I
    .locals 5
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->dialogTheme:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aput-boolean v3, v0, v3

    .line 71
    :goto_0
    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->dialogTheme:I

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    return v1

    .line 53
    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 55
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_1

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 56
    :cond_1
    const v1, 0x7f0f00b2

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->dialogTheme:I

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 61
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_2

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 62
    :cond_2
    const v1, 0x7f0f00a7

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->dialogTheme:I

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
