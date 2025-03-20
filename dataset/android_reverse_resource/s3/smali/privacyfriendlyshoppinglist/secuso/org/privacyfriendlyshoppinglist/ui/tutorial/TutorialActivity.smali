.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final ACTION_SHOW_ANYWAYS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private btnNext:Landroid/widget/Button;

.field private btnSkip:Landroid/widget/Button;

.field private dots:[Landroid/widget/TextView;

.field private dotsLayout:Landroid/widget/LinearLayout;

.field private layouts:[I

.field private myViewPagerAdapter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;

.field private prefManager:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x16060f15c71379ffL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity"

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->TAG:Ljava/lang/String;

    const/16 v1, 0x3a

    aput-boolean v3, v0, v1

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_SHOW_ANYWAYS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->ACTION_SHOW_ANYWAYS:Ljava/lang/String;

    const/16 v1, 0x3b

    aput-boolean v3, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 138
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$3;

    invoke-direct {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$3;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)V

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->launchHomeScreen()V

    const/16 v1, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;I)I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->getItem(I)I

    move-result v1

    const/16 v2, 0x34

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)[I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->layouts:[I

    const/16 v2, 0x35

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)Landroid/support/v4/view/ViewPager;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x36

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->addBottomDots(I)V

    const/16 v1, 0x37

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$500(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->btnNext:Landroid/widget/Button;

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->btnSkip:Landroid/widget/Button;

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private addBottomDots(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 107
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->layouts:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/widget/TextView;

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    const/16 v2, 0x19

    aput-boolean v6, v1, v2

    .line 109
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const/16 v3, 0x1a

    aput-boolean v6, v1, v3

    .line 110
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/16 v4, 0x1b

    aput-boolean v6, v1, v4

    .line 112
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dotsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 113
    const/4 v0, 0x0

    const/16 v4, 0x1c

    aput-boolean v6, v1, v4

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    const/16 v4, 0x1d

    aput-boolean v6, v1, v4

    .line 114
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    const/16 v4, 0x1e

    aput-boolean v6, v1, v4

    .line 115
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const-string v5, "&#8226;"

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x1f

    aput-boolean v6, v1, v4

    .line 116
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x20

    aput-boolean v6, v1, v4

    .line 117
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    aget v5, v3, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x21

    aput-boolean v6, v1, v4

    .line 118
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dotsLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x22

    aput-boolean v6, v1, v4

    goto :goto_0

    .line 121
    :cond_0
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    array-length v3, v3

    if-gtz v3, :cond_1

    const/16 v2, 0x23

    aput-boolean v6, v1, v2

    .line 123
    :goto_1
    const/16 v2, 0x26

    aput-boolean v6, v1, v2

    return-void

    .line 121
    :cond_1
    const/16 v3, 0x24

    aput-boolean v6, v1, v3

    .line 122
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dots:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    aget v2, v2, p1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x25

    aput-boolean v6, v1, v2

    goto :goto_1
.end method

.method private changeStatusBarColor()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 171
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    .line 176
    :goto_0
    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    return-void

    .line 171
    :cond_0
    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    .line 172
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2f

    aput-boolean v3, v0, v2

    .line 173
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/16 v2, 0x30

    aput-boolean v3, v0, v2

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private getItem(I)I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, p1

    const/16 v2, 0x27

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private launchHomeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->prefManager:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->setFirstTimeLaunch(Z)V

    const/16 v1, 0x28

    aput-boolean v3, v0, v1

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x29

    aput-boolean v3, v0, v2

    .line 132
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x2a

    aput-boolean v3, v0, v2

    .line 133
    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x2b

    aput-boolean v3, v0, v1

    .line 134
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->finish()V

    .line 135
    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/4 v4, 0x4

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 43
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;

    invoke-direct {v0, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->prefManager:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 45
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    aput-boolean v3, v1, v4

    .line 47
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->prefManager:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->isFirstTimeLaunch()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 53
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_3

    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    .line 57
    :goto_1
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->setContentView(I)V

    const/16 v0, 0xd

    aput-boolean v3, v1, v0

    .line 59
    const v0, 0x7f100081

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/16 v0, 0xe

    aput-boolean v3, v1, v0

    .line 60
    const v0, 0x7f100082

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->dotsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0xf

    aput-boolean v3, v1, v0

    .line 61
    const v0, 0x7f100084

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->btnSkip:Landroid/widget/Button;

    const/16 v0, 0x10

    aput-boolean v3, v1, v0

    .line 62
    const v0, 0x7f100083

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->btnNext:Landroid/widget/Button;

    .line 67
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->layouts:[I

    const/16 v0, 0x11

    aput-boolean v3, v1, v0

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->addBottomDots(I)V

    const/16 v0, 0x12

    aput-boolean v3, v1, v0

    .line 77
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->changeStatusBarColor()V

    const/16 v0, 0x13

    aput-boolean v3, v1, v0

    .line 79
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;

    invoke-direct {v0, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)V

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->myViewPagerAdapter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;

    const/16 v0, 0x14

    aput-boolean v3, v1, v0

    .line 80
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->myViewPagerAdapter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$MyViewPagerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    aput-boolean v3, v1, v5

    .line 81
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/16 v0, 0x16

    aput-boolean v3, v1, v0

    .line 83
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->btnSkip:Landroid/widget/Button;

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$1;

    invoke-direct {v2, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x17

    aput-boolean v3, v1, v0

    .line 90
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->btnNext:Landroid/widget/Button;

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$2;

    invoke-direct {v2, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity$2;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const/16 v0, 0x18

    aput-boolean v3, v1, v0

    :goto_2
    return-void

    .line 47
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 48
    :goto_3
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->launchHomeScreen()V

    .line 49
    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    goto :goto_2

    .line 47
    :cond_1
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->ACTION_SHOW_ANYWAYS:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    goto :goto_3

    .line 53
    :cond_3
    const/16 v0, 0xb

    aput-boolean v3, v1, v0

    .line 54
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x500

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v0, 0xc

    aput-boolean v3, v1, v0

    goto/16 :goto_1

    .line 67
    nop

    :array_0
    .array-data 4
        0x7f040062
        0x7f040056
        0x7f04004e
        0x7f04005e
    .end array-data
.end method
