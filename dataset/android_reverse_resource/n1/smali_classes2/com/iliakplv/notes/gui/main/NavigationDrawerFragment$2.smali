.class Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2c55e9b41d33f144L    # 4.1035650880179064E-95

    const-string v2, "com/iliakplv/notes/gui/main/NavigationDrawerFragment$2"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;->$jacocoInit()[Z

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-static {v3}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$100(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v3

    invoke-interface {v3}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "labels":Ljava/util/List;, "Ljava/util/List<Lcom/iliakplv/notes/notes/Label;>;"
    add-int/lit8 v3, p3, -0x1

    aput-boolean v7, v2, v7

    .line 93
    if-gez v3, :cond_0

    const/4 v3, 0x2

    aput-boolean v7, v2, v3

    .line 99
    :goto_0
    const/16 v3, 0x9

    aput-boolean v7, v2, v3

    return v7

    .line 93
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v3, 0x3

    aput-boolean v7, v2, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    aput-boolean v7, v2, v4

    .line 94
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/Label;

    .line 95
    .local v0, "label":Lcom/iliakplv/notes/notes/Label;
    sget-object v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->LabelActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const/4 v4, 0x5

    aput-boolean v7, v2, v4

    .line 96
    invoke-virtual {v0}, Lcom/iliakplv/notes/notes/Label;->getId()Ljava/io/Serializable;

    move-result-object v4

    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$2;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    const/4 v6, 0x6

    aput-boolean v7, v2, v6

    .line 97
    invoke-static {v5}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$200(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/gui/main/MainActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x7

    aput-boolean v7, v2, v6

    .line 95
    invoke-static {v3, v4, v5}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->show(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;Ljava/io/Serializable;Landroid/app/FragmentManager;)V

    const/16 v3, 0x8

    aput-boolean v7, v2, v3

    goto :goto_0
.end method
