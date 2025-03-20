.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AboutActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x422d9a6a01a35cc5L    # -6.692724117135717E-11

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v3, v6

    .line 23
    const v2, 0x7f04001b

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->setContentView(I)V

    const/4 v2, 0x2

    aput-boolean v6, v3, v2

    .line 25
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 26
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/4 v2, 0x3

    aput-boolean v6, v3, v2

    .line 31
    :goto_0
    const v2, 0x7f100073

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, "mainContent":Landroid/view/View;
    if-nez v1, :cond_1

    const/4 v2, 0x6

    aput-boolean v6, v3, v2

    .line 38
    :goto_1
    invoke-virtual {p0, v7, v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->overridePendingTransition(II)V

    const/16 v2, 0xa

    aput-boolean v6, v3, v2

    .line 40
    const v2, 0x7f10007b

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v2, 0xb

    aput-boolean v6, v3, v2

    .line 41
    const v2, 0x7f10007c

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v2, 0xc

    aput-boolean v6, v3, v2

    .line 42
    const v2, 0x7f100077

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "1.0.8"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const/16 v2, 0xd

    aput-boolean v6, v3, v2

    return-void

    .line 26
    .end local v1    # "mainContent":Landroid/view/View;
    :cond_0
    const/4 v2, 0x4

    aput-boolean v6, v3, v2

    .line 28
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v2, 0x5

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 32
    .restart local v1    # "mainContent":Landroid/view/View;
    :cond_1
    const/4 v2, 0x7

    aput-boolean v6, v3, v2

    .line 34
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/16 v2, 0x8

    aput-boolean v6, v3, v2

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v2, 0x9

    aput-boolean v6, v3, v2

    goto :goto_1
.end method
