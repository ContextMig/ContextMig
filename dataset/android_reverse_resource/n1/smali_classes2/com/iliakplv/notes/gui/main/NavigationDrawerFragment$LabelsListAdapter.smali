.class Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/iliakplv/notes/notes/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private labelsColors:[I

.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7ffea9b06fac0af3L

    const-string v2, "com/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 289
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    aput-boolean v3, v0, v4

    .line 290
    invoke-static {p1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$200(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/gui/main/MainActivity;

    move-result-object v1

    invoke-static {p1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$100(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v2

    invoke-interface {v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    aput-boolean v3, v0, v3

    .line 291
    invoke-virtual {p1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->labelsColors:[I

    .line 292
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$100(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v1

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 297
    if-eqz p2, :cond_0

    .line 298
    const/4 v0, 0x3

    aput-boolean v6, v2, v0

    .line 303
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$100(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/Label;

    const/4 v1, 0x5

    aput-boolean v6, v2, v1

    .line 304
    const v1, 0x7f0c000e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    .line 305
    const v1, 0x7f0c0005

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, 0x7

    aput-boolean v6, v2, v4

    .line 306
    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->labelsColors:[I

    invoke-virtual {v0}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x8

    aput-boolean v6, v2, v5

    .line 307
    invoke-static {v0}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9

    aput-boolean v6, v2, v0

    .line 308
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0xa

    aput-boolean v6, v2, v0

    .line 309
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 311
    const/16 v0, 0xb

    aput-boolean v6, v2, v0

    return-object p2

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x4

    aput-boolean v6, v2, v0

    goto :goto_0
.end method
