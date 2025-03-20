.class public Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;
.super Landroid/app/Fragment;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCallback;
.implements Lcom/iliakplv/notes/notes/storage/NotesStorageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$NavigationDrawerListener;,
        Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final ALL_LABELS:Ljava/lang/Integer;

.field private static final ALL_LABELS_HEADER_POSITION:I


# instance fields
.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private fragmentContainerView:Landroid/view/View;

.field private labelsListAdapter:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;

.field private labelsListView:Landroid/widget/ListView;

.field private mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

.field private final storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xbc984fdecad3749L    # -6.43816891548744E251

    const-string v2, "com/iliakplv/notes/gui/main/NavigationDrawerFragment"

    const/16 v3, 0x48

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    sget-object v1, Lcom/iliakplv/notes/notes/storage/NotesStorage;->NOTES_FOR_ALL_LABELS:Ljava/lang/Integer;

    sput-object v1, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->ALL_LABELS:Ljava/lang/Integer;

    const/16 v1, 0x47

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 41
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->getStorage()Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->selectItem(I)V

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/notes/storage/NotesStorage;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    const/16 v2, 0x43

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/gui/main/MainActivity;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    const/16 v2, 0x44

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Landroid/support/v4/app/ActionBarDrawerToggle;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    const/16 v2, 0x45

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListAdapter:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;

    const/16 v2, 0x46

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private createNewLabel()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->NEW_LABEL:Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->showLabelEditDialog(Ljava/io/Serializable;)V

    .line 195
    const/16 v1, 0x2e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getActionBar()Landroid/app/ActionBar;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private selectItem(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 174
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x26

    aput-boolean v4, v2, v1

    .line 176
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->createNewLabel()V

    const/16 v1, 0x27

    aput-boolean v4, v2, v1

    .line 191
    :goto_0
    const/16 v1, 0x2d

    aput-boolean v4, v2, v1

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->closeDrawer()V

    .line 181
    if-nez p1, :cond_1

    .line 182
    sget-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->ALL_LABELS:Ljava/lang/Integer;

    .local v0, "labelId":Ljava/io/Serializable;
    const/16 v1, 0x28

    aput-boolean v4, v2, v1

    .line 189
    .end local v0    # "labelId":Ljava/io/Serializable;
    :goto_1
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    invoke-virtual {v1, v0}, Lcom/iliakplv/notes/gui/main/MainActivity;->onLabelSelected(Ljava/io/Serializable;)V

    const/16 v1, 0x2c

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v1

    const/16 v3, 0x29

    aput-boolean v4, v2, v3

    .line 185
    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iliakplv/notes/notes/Label;

    const/16 v3, 0x2a

    aput-boolean v4, v2, v3

    .line 186
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/Label;->getId()Ljava/io/Serializable;

    move-result-object v0

    const/16 v1, 0x2b

    aput-boolean v4, v2, v1

    goto :goto_1
.end method

.method private showGlobalContextActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x3d

    aput-boolean v3, v0, v2

    .line 256
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/16 v2, 0x3e

    aput-boolean v3, v0, v2

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 258
    const/16 v1, 0x3f

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    .line 171
    :goto_0
    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    return-void

    .line 168
    :cond_0
    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    .line 169
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->fragmentContainerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public isDrawerOpen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 164
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0x20

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x21

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->fragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 54
    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->setHasOptionsMenu(Z)V

    .line 55
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 217
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 218
    check-cast p1, Lcom/iliakplv/notes/gui/main/MainActivity;

    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    .line 219
    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 234
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/16 v1, 0x34

    aput-boolean v2, v0, v1

    .line 235
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    const/16 v1, 0x35

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    new-instance v2, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;

    invoke-direct {v2, p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;-><init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V

    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    const/16 v1, 0x41

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v1, :cond_0

    const/16 v1, 0x36

    aput-boolean v2, v0, v1

    .line 243
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 244
    const/16 v1, 0x3a

    aput-boolean v2, v0, v1

    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x37

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x38

    aput-boolean v2, v0, v1

    .line 241
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->showGlobalContextActionBar()V

    const/16 v1, 0x39

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0c0005

    const v7, 0x7f030002

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 59
    const v0, 0x7f030005

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListView:Landroid/widget/ListView;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 62
    invoke-virtual {p1, v7, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 63
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 64
    const v0, 0x7f0c000e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 65
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    aput-boolean v4, v1, v6

    .line 68
    invoke-virtual {p1, v7, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 69
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f050034

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 70
    const v0, 0x7f0c000e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 71
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 74
    new-instance v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;

    invoke-direct {v0, p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;-><init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListAdapter:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 75
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListAdapter:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 78
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;

    invoke-direct {v2, p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;-><init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    .line 86
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;

    invoke-direct {v2, p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;-><init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->labelsListView:Landroid/widget/ListView;

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 223
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    .line 225
    const/16 v1, 0x32

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onLabelChanged()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    new-instance v2, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$5;

    invoke-direct {v2, p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$5;-><init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V

    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    const/16 v1, 0x30

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 248
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/16 v1, 0x3b

    aput-boolean v0, v2, v1

    .line 251
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x3c

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 116
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->removeStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z

    .line 117
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 110
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->addStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z

    .line 111
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 229
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    const/16 v1, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setUp(ILandroid/support/v4/widget/DrawerLayout;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v7

    .line 120
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->fragmentContainerView:Landroid/view/View;

    .line 121
    iput-object p2, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/16 v0, 0x15

    aput-boolean v8, v7, v0

    .line 122
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/high16 v1, 0x7f020000

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    const/16 v0, 0x16

    aput-boolean v8, v7, v0

    .line 124
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x17

    aput-boolean v8, v7, v1

    .line 125
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x18

    aput-boolean v8, v7, v1

    .line 126
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 128
    new-instance v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;

    const/16 v1, 0x19

    aput-boolean v8, v7, v1

    .line 129
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f020002

    const v5, 0x7f050038

    const v6, 0x7f050037

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;-><init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    const/16 v0, 0x1a

    aput-boolean v8, v7, v0

    .line 154
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$4;

    invoke-direct {v1, p0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$4;-><init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0x1b

    aput-boolean v8, v7, v0

    .line 160
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 161
    const/16 v0, 0x1c

    aput-boolean v8, v7, v0

    return-void
.end method

.method public showLabelEditDialog(Ljava/io/Serializable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, p1, p0}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->show(Landroid/app/FragmentManager;Ljava/io/Serializable;Landroid/app/Fragment;)V

    .line 201
    const/16 v1, 0x2f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
