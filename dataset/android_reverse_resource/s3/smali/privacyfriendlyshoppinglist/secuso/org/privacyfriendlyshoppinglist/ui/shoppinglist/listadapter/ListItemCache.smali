.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;
.super Ljava/lang/Object;
.source "ListItemCache.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private currency:Ljava/lang/String;

.field private deadLineTextView:Landroid/widget/TextView;

.field private detailsVisible:Z

.field private highPriorityImageView:Landroid/widget/ImageView;

.field private listCard:Landroid/support/v7/widget/CardView;

.field private listDetails:Landroid/widget/TextView;

.field private listNameTextView:Landroid/widget/TextView;

.field private nrProductsTextView:Landroid/widget/TextView;

.field private reminderBar:Landroid/widget/ImageView;

.field private reminderImageView:Landroid/widget/ImageView;

.field private showDetailsImageButton:Landroid/widget/ImageButton;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x53e2550088fa606eL    # -3.47239473912372E-96

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aput-boolean v4, v1, v2

    .line 34
    const v0, 0x7f1000fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->listNameTextView:Landroid/widget/TextView;

    aput-boolean v4, v1, v4

    .line 35
    const v0, 0x7f1000fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->deadLineTextView:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 36
    const v0, 0x7f100093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->nrProductsTextView:Landroid/widget/TextView;

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 37
    const v0, 0x7f1000d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->listDetails:Landroid/widget/TextView;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 38
    const v0, 0x7f100094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->listCard:Landroid/support/v7/widget/CardView;

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 39
    const v0, 0x7f1000fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->highPriorityImageView:Landroid/widget/ImageView;

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 40
    const v0, 0x7f1000fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->reminderImageView:Landroid/widget/ImageView;

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 41
    const v0, 0x7f1000fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->reminderBar:Landroid/widget/ImageView;

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 42
    const v0, 0x7f1000d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->showDetailsImageButton:Landroid/widget/ImageButton;

    .line 43
    iput-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->detailsVisible:Z

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v4, v1, v3

    .line 47
    const-string v3, "pref_currency"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->currency:Ljava/lang/String;

    .line 48
    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->currency:Ljava/lang/String;

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDeadLineTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->deadLineTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getHighPriorityImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->highPriorityImageView:Landroid/widget/ImageView;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getListCard()Landroid/support/v7/widget/CardView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->listCard:Landroid/support/v7/widget/CardView;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getListDetails()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->listDetails:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getListNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->listNameTextView:Landroid/widget/TextView;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNrProductsTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->nrProductsTextView:Landroid/widget/TextView;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getReminderBar()Landroid/widget/ImageView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->reminderBar:Landroid/widget/ImageView;

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getReminderImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->reminderImageView:Landroid/widget/ImageView;

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getShowDetailsImageButton()Landroid/widget/ImageButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->showDetailsImageButton:Landroid/widget/ImageButton;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isDetailsVisible()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->detailsVisible:Z

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setDetailsVisible(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListItemCache;->detailsVisible:Z

    .line 103
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
