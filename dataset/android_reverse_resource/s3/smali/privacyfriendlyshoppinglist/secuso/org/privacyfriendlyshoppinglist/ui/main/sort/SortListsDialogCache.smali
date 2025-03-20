.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;
.super Ljava/lang/Object;
.source "SortListsDialogCache.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private ascending:Landroid/widget/RadioButton;

.field private descending:Landroid/widget/RadioButton;

.field private name:Landroid/widget/RadioButton;

.field private priority:Landroid/widget/RadioButton;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6349c53758adba34L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 21
    const v0, 0x7f1000ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->ascending:Landroid/widget/RadioButton;

    aput-boolean v2, v1, v2

    .line 22
    const v0, 0x7f100100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->descending:Landroid/widget/RadioButton;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 23
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->name:Landroid/widget/RadioButton;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 24
    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->priority:Landroid/widget/RadioButton;

    .line 25
    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public getAscending()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->ascending:Landroid/widget/RadioButton;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDescending()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->descending:Landroid/widget/RadioButton;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getName()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->name:Landroid/widget/RadioButton;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPriority()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->priority:Landroid/widget/RadioButton;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
