.class public Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$MyViewPageAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TutorialActivity"


# instance fields
.field private btnNext:Landroid/widget/Button;

.field private btnSkip:Landroid/widget/Button;

.field private dots:[Landroid/widget/TextView;

.field private dotsLayout:Landroid/widget/LinearLayout;

.field private layouts:[I

.field private myViewPageAdapter:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$MyViewPageAdapter;

.field private prefManager:Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 132
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;-><init>(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->launchHomeScreen()V

    return-void
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;I)I
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->getItem(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)[I
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->layouts:[I

    return-object p0
.end method

.method static synthetic access$300(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->addBottomDots(I)V

    return-void
.end method

.method static synthetic access$500(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)Landroid/widget/Button;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->btnNext:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)Landroid/widget/Button;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->btnSkip:Landroid/widget/Button;

    return-object p0
.end method

.method private addBottomDots(I)V
    .locals 5

    .line 160
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->layouts:[I

    const/high16 v1, 0x7f030000

    const v2, 0x7f030001

    const/4 v3, 0x0

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    .line 161
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 164
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dotsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    :goto_0
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v3, v2, :cond_0

    .line 166
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 167
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    const-string v4, "&#8226;"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    aget v4, v1, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dotsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 174
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    aget p1, v0, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private changeStatusBarColor()V
    .locals 2

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method private getItem(I)I
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private launchHomeScreen()V
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->prefManager:Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->setFirstTimeLaunch(Z)V

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;

    invoke-direct {p1, p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->prefManager:Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;

    .line 66
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->getIntent()Landroid/content/Intent;

    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const p1, 0x7f0b001f

    .line 74
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->setContentView(I)V

    const p1, 0x7f090151

    .line 75
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const p1, 0x7f090099

    .line 76
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->dotsLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f09003f

    .line 77
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->btnSkip:Landroid/widget/Button;

    const p1, 0x7f09003e

    .line 78
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->btnNext:Landroid/widget/Button;

    const/4 p1, 0x5

    .line 81
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->layouts:[I

    const/4 p1, 0x0

    .line 90
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->addBottomDots(I)V

    .line 93
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->changeStatusBarColor()V

    .line 95
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$MyViewPageAdapter;

    invoke-direct {p1, p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$MyViewPageAdapter;-><init>(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->myViewPageAdapter:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$MyViewPageAdapter;

    .line 96
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->myViewPageAdapter:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$MyViewPageAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 99
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->btnSkip:Landroid/widget/Button;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$1;-><init>(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->btnNext:Landroid/widget/Button;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$2;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$2;-><init>(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b005d
        0x7f0b005e
        0x7f0b005f
        0x7f0b0060
        0x7f0b0061
    .end array-data
.end method
