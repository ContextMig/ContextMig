.class public Lkdk/android/simplydo/SimplyDoActivity;
.super Landroid/app/Activity;
.source "SimplyDoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;,
        Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;
    }
.end annotation


# static fields
.field private static final DELETE_INACTIVE:I = 0x64

.field private static final DELETE_ITEM:I = 0x67

.field private static final DELETE_LIST:I = 0x65

.field private static final DIALOG_DELETE_INACTIVE:I = 0xcd

.field private static final DIALOG_ITEM_DELETE:I = 0xc9

.field private static final DIALOG_ITEM_EDIT:I = 0xcb

.field private static final DIALOG_ITEM_MOVE:I = 0xcc

.field private static final DIALOG_LIST_DELETE:I = 0xc8

.field private static final DIALOG_LIST_EDIT:I = 0xca

.field private static final EDIT_ITEM:I = 0x68

.field private static final EDIT_LIST:I = 0x66

.field private static final MOVE_ITEM:I = 0x6c

.field private static final SETTINGS:I = 0x6a

.field private static final SORT_NOW:I = 0x6b

.field private static final TOGGLE_STAR:I = 0x69

.field private static instance:Lkdk/android/simplydo/SimplyDoActivity;


# instance fields
.field private ctxItem:Lkdk/android/simplydo/ItemDesc;

.field private ctxList:Lkdk/android/simplydo/ListDesc;

.field private dataViewer:Lkdk/android/simplydo/DataViewer;

.field private deleteInactiveAction:Lkdk/android/simplydo/DeleteInactiveAction;

.field private itemDeleteBuilder:Landroid/app/AlertDialog$Builder;

.field private itemEditBuilder:Landroid/app/AlertDialog$Builder;

.field private itemEditView:Landroid/widget/EditText;

.field private itemListSorter:Lkdk/android/simplydo/ItemListSorter;

.field private itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

.field private itemsListReactor:Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;

.field private listDeleteBuilder:Landroid/app/AlertDialog$Builder;

.field private listEditBuilder:Landroid/app/AlertDialog$Builder;

.field private listEditView:Landroid/widget/EditText;

.field private listListSorter:Lkdk/android/simplydo/ListListSorter;

.field private listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

.field private listsListReactor:Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;

.field private moveItemToAction:Lkdk/android/simplydo/MoveToAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lkdk/android/simplydo/SimplyDoActivity;->instance:Lkdk/android/simplydo/SimplyDoActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;

    invoke-direct {v0, p0, v1}, Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;-><init>(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/SimplyDoActivity$1;)V

    iput-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->listsListReactor:Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;

    .line 77
    new-instance v0, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;

    invoke-direct {v0, p0, v1}, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;-><init>(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/SimplyDoActivity$1;)V

    iput-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemsListReactor:Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;

    .line 90
    new-instance v0, Lkdk/android/simplydo/ListListSorter;

    invoke-direct {v0}, Lkdk/android/simplydo/ListListSorter;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->listListSorter:Lkdk/android/simplydo/ListListSorter;

    .line 91
    new-instance v0, Lkdk/android/simplydo/ItemListSorter;

    invoke-direct {v0}, Lkdk/android/simplydo/ItemListSorter;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemListSorter:Lkdk/android/simplydo/ItemListSorter;

    .line 780
    return-void
.end method

.method static synthetic access$1000(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/ItemDesc;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;
    .param p1, "x1"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lkdk/android/simplydo/SimplyDoActivity;->itemSelected(Lkdk/android/simplydo/ItemDesc;)V

    return-void
.end method

.method static synthetic access$1100(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/ListDesc;Z)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;
    .param p1, "x1"    # Lkdk/android/simplydo/ListDesc;
    .param p2, "x2"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lkdk/android/simplydo/SimplyDoActivity;->listSelected(Lkdk/android/simplydo/ListDesc;Z)V

    return-void
.end method

.method static synthetic access$1202(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/ListDesc;)Lkdk/android/simplydo/ListDesc;
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;
    .param p1, "x1"    # Lkdk/android/simplydo/ListDesc;

    .prologue
    .line 51
    iput-object p1, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxList:Lkdk/android/simplydo/ListDesc;

    return-object p1
.end method

.method static synthetic access$200(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lkdk/android/simplydo/SimplyDoActivity;->addList()V

    return-void
.end method

.method static synthetic access$300(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lkdk/android/simplydo/SimplyDoActivity;->addItem()V

    return-void
.end method

.method static synthetic access$400(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lkdk/android/simplydo/SimplyDoActivity;->contextDeleteList()V

    return-void
.end method

.method static synthetic access$500(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lkdk/android/simplydo/SimplyDoActivity;->contextDeleteItem()V

    return-void
.end method

.method static synthetic access$600(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lkdk/android/simplydo/SimplyDoActivity;->itemEditOk()V

    return-void
.end method

.method static synthetic access$700(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lkdk/android/simplydo/SimplyDoActivity;->listEditOk()V

    return-void
.end method

.method static synthetic access$800(Lkdk/android/simplydo/SimplyDoActivity;)Lkdk/android/simplydo/ItemDesc;
    .locals 1
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    return-object v0
.end method

.method static synthetic access$802(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/ItemDesc;)Lkdk/android/simplydo/ItemDesc;
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;
    .param p1, "x1"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 51
    iput-object p1, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    return-object p1
.end method

.method static synthetic access$900(Lkdk/android/simplydo/SimplyDoActivity;)Lkdk/android/simplydo/DataViewer;
    .locals 1
    .param p0, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    return-object v0
.end method

.method private addItem()V
    .locals 6

    .prologue
    .line 665
    const v4, 0x7f080008

    invoke-virtual {p0, v4}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 667
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "txt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, "txtTrim":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 672
    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v4}, Lkdk/android/simplydo/DataViewer;->getSelectedList()Lkdk/android/simplydo/ListDesc;

    move-result-object v0

    .line 673
    .local v0, "currentList":Lkdk/android/simplydo/ListDesc;
    if-eqz v0, :cond_1

    .line 675
    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v4, v3}, Lkdk/android/simplydo/DataViewer;->createItem(Ljava/lang/String;)V

    .line 676
    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v4}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 677
    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v4}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 678
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 685
    .end local v0    # "currentList":Lkdk/android/simplydo/ListDesc;
    :cond_0
    :goto_0
    return-void

    .line 682
    .restart local v0    # "currentList":Lkdk/android/simplydo/ListDesc;
    :cond_1
    const-string v4, "SimplyDo"

    const-string v5, "Add item called but selected list was null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addList()V
    .locals 5

    .prologue
    .line 648
    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 650
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "txt":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "txtTrim":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 655
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v3, v2}, Lkdk/android/simplydo/DataViewer;->createList(Ljava/lang/String;)V

    .line 656
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->listListSorter:Lkdk/android/simplydo/ListListSorter;

    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v4}, Lkdk/android/simplydo/DataViewer;->getListData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkdk/android/simplydo/ListListSorter;->sort(Ljava/util/List;)V

    .line 657
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v3}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 658
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 660
    :cond_0
    return-void
.end method

.method private contextDeleteItem()V
    .locals 3

    .prologue
    .line 725
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v2}, Lkdk/android/simplydo/ItemDesc;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-interface {v0, v1}, Lkdk/android/simplydo/DataViewer;->deleteItem(Lkdk/android/simplydo/ItemDesc;)V

    .line 728
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v0}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 729
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v0}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    .line 732
    return-void
.end method

.method private contextDeleteList()V
    .locals 3

    .prologue
    .line 715
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v2}, Lkdk/android/simplydo/ListDesc;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lkdk/android/simplydo/DataViewer;->deleteList(I)V

    .line 718
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v0}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxList:Lkdk/android/simplydo/ListDesc;

    .line 721
    return-void
.end method

.method public static getInstance()Lkdk/android/simplydo/SimplyDoActivity;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lkdk/android/simplydo/SimplyDoActivity;->instance:Lkdk/android/simplydo/SimplyDoActivity;

    return-object v0
.end method

.method private itemEditOk()V
    .locals 3

    .prologue
    .line 690
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "txt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 694
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-interface {v1, v2, v0}, Lkdk/android/simplydo/DataViewer;->updateItemLabel(Lkdk/android/simplydo/ItemDesc;Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemListSorter:Lkdk/android/simplydo/ItemListSorter;

    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v1, v2}, Lkdk/android/simplydo/ItemListSorter;->markEditUpdate(Lkdk/android/simplydo/ItemDesc;)V

    .line 696
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v1}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 698
    :cond_0
    return-void
.end method

.method private itemSelected(Lkdk/android/simplydo/ItemDesc;)V
    .locals 3
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 637
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p1, v0}, Lkdk/android/simplydo/DataViewer;->updateItemActiveness(Lkdk/android/simplydo/ItemDesc;Z)V

    .line 640
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemListSorter:Lkdk/android/simplydo/ItemListSorter;

    invoke-virtual {v0, p1}, Lkdk/android/simplydo/ItemListSorter;->markActivityUpdate(Lkdk/android/simplydo/ItemDesc;)V

    .line 641
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v0}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 642
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v0}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 643
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listEditOk()V
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->listEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "txt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 707
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v2}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lkdk/android/simplydo/DataViewer;->updateListLabel(ILjava/lang/String;)V

    .line 708
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 710
    :cond_0
    return-void
.end method

.method private listSelected(Lkdk/android/simplydo/ListDesc;Z)V
    .locals 3
    .param p1, "list"    # Lkdk/android/simplydo/ListDesc;
    .param p2, "animate"    # Z

    .prologue
    .line 614
    invoke-virtual {p1}, Lkdk/android/simplydo/ListDesc;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v1, p1}, Lkdk/android/simplydo/DataViewer;->setSelectedList(Lkdk/android/simplydo/ListDesc;)V

    .line 617
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemListSorter:Lkdk/android/simplydo/ItemListSorter;

    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v2}, Lkdk/android/simplydo/DataViewer;->getItemData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkdk/android/simplydo/ItemListSorter;->sort(Ljava/util/List;)V

    .line 618
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v1}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 620
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 622
    .local v0, "viewSwitch":Landroid/widget/ViewSwitcher;
    if-eqz p2, :cond_0

    .line 624
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 632
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 629
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setAnimateFirstView(Z)V

    .line 630
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_0
.end method


# virtual methods
.method public cacheInvalidated()V
    .locals 4

    .prologue
    .line 292
    const-string v2, "SimplyDo"

    const-string v3, "SimplyDoActivity.cacheInvalidated(): Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const v2, 0x7f080011

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    .line 295
    .local v1, "viewSwitch":Landroid/widget/ViewSwitcher;
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    .line 296
    .local v0, "displayed":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 298
    const/high16 v2, 0x7f050000

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->setTitle(I)V

    .line 299
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showPrevious()V

    .line 302
    :cond_0
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v2}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 303
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v2}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 304
    return-void
.end method

.method public getDataVeiwer()Lkdk/android/simplydo/DataViewer;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 366
    const-string v2, "SimplyDo"

    const-string v3, "SimplyDoActivity.onBackPressed() called"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const v2, 0x7f080011

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    .line 369
    .local v1, "viewSwitch":Landroid/widget/ViewSwitcher;
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    .line 371
    .local v0, "displayed":I
    if-nez v0, :cond_0

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 382
    :goto_0
    return-void

    .line 377
    :cond_0
    const/high16 v2, 0x7f050000

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->setTitle(I)V

    .line 378
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showPrevious()V

    .line 379
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lkdk/android/simplydo/DataViewer;->setSelectedList(Lkdk/android/simplydo/ListDesc;)V

    .line 380
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v2}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    const-string v19, "SimplyDo"

    const-string v20, "SimplyDoActivity.onCreate() called"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v19, 0x7f030006

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->setContentView(I)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lkdk/android/simplydo/SimplyDoActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    new-instance v10, Lkdk/android/simplydo/DataManager;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lkdk/android/simplydo/DataManager;-><init>(Landroid/content/Context;)V

    .line 112
    .local v10, "dataManager":Lkdk/android/simplydo/DataManager;
    new-instance v9, Lkdk/android/simplydo/CachingDataViewer;

    invoke-direct {v9, v10}, Lkdk/android/simplydo/CachingDataViewer;-><init>(Lkdk/android/simplydo/DataManager;)V

    .line 113
    .local v9, "cdv":Lkdk/android/simplydo/CachingDataViewer;
    invoke-virtual {v9}, Lkdk/android/simplydo/CachingDataViewer;->start()V

    .line 114
    move-object/from16 v0, p0

    iput-object v9, v0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    .line 116
    new-instance v19, Lkdk/android/simplydo/ListPropertiesAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lkdk/android/simplydo/ListPropertiesAdapter;-><init>(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/DataViewer;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    .line 118
    const v19, 0x7f080010

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 119
    .local v17, "listView":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->listsListReactor:Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->listsListReactor:Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    new-instance v19, Lkdk/android/simplydo/ItemPropertiesAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lkdk/android/simplydo/ItemPropertiesAdapter;-><init>(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/DataViewer;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    .line 124
    const v19, 0x7f08000a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 125
    .local v13, "itemView":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->itemsListReactor:Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->itemsListReactor:Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    const v19, 0x7f08000f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 130
    .local v7, "addList":Landroid/widget/Button;
    new-instance v19, Lkdk/android/simplydo/SimplyDoActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$1;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v19, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 139
    .local v5, "addItem":Landroid/widget/Button;
    new-instance v19, Lkdk/android/simplydo/SimplyDoActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$2;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v19, 0x7f080011

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ViewSwitcher;

    .line 148
    .local v18, "viewSwitch":Landroid/widget/ViewSwitcher;
    const v19, 0x10a0002

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 150
    const v19, 0x10a0003

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 153
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->listDeleteBuilder:Landroid/app/AlertDialog$Builder;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->listDeleteBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v19, v0

    const-string v20, "Are you sure you want to delete this list?"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Delete?"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Yes"

    new-instance v21, Lkdk/android/simplydo/SimplyDoActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$4;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "No"

    new-instance v21, Lkdk/android/simplydo/SimplyDoActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$3;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->itemDeleteBuilder:Landroid/app/AlertDialog$Builder;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->itemDeleteBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v19, v0

    const-string v20, "This item is still active. Are you sure you want to delete it?"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Delete?"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Yes"

    new-instance v21, Lkdk/android/simplydo/SimplyDoActivity$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$6;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "No"

    new-instance v21, Lkdk/android/simplydo/SimplyDoActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$5;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    const v19, 0x7f08000e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 187
    .local v8, "addListEditText":Landroid/widget/EditText;
    new-instance v19, Lkdk/android/simplydo/SimplyDoActivity$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$7;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 197
    const v19, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 198
    .local v6, "addItemEditText":Landroid/widget/EditText;
    new-instance v19, Lkdk/android/simplydo/SimplyDoActivity$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$8;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 207
    const-string v19, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 209
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/high16 v20, 0x7f030000

    const/high16 v19, 0x7f080000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 211
    .local v12, "itemEditLayout":Landroid/view/View;
    const v19, 0x7f080001

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->itemEditView:Landroid/widget/EditText;

    .line 213
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->itemEditBuilder:Landroid/app/AlertDialog$Builder;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->itemEditBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Edit Item Label"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "OK"

    new-instance v21, Lkdk/android/simplydo/SimplyDoActivity$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$9;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Cancel"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    const v20, 0x7f030003

    const v19, 0x7f08000b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 226
    .local v15, "listEditLayout":Landroid/view/View;
    const v19, 0x7f08000c

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->listEditView:Landroid/widget/EditText;

    .line 228
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->listEditBuilder:Landroid/app/AlertDialog$Builder;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->listEditBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Edit List Label"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "OK"

    new-instance v21, Lkdk/android/simplydo/SimplyDoActivity$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/SimplyDoActivity$10;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Cancel"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lkdk/android/simplydo/DataViewer;->fetchLists()V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 242
    new-instance v19, Lkdk/android/simplydo/MoveToAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lkdk/android/simplydo/MoveToAction;-><init>(Landroid/content/Context;Lkdk/android/simplydo/DataViewer;Lkdk/android/simplydo/ListPropertiesAdapter;Lkdk/android/simplydo/ItemPropertiesAdapter;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->moveItemToAction:Lkdk/android/simplydo/MoveToAction;

    .line 248
    new-instance v19, Lkdk/android/simplydo/DeleteInactiveAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lkdk/android/simplydo/DeleteInactiveAction;-><init>(Landroid/app/Activity;Lkdk/android/simplydo/DataViewer;Lkdk/android/simplydo/ListPropertiesAdapter;Lkdk/android/simplydo/ItemPropertiesAdapter;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lkdk/android/simplydo/SimplyDoActivity;->deleteInactiveAction:Lkdk/android/simplydo/DeleteInactiveAction;

    .line 254
    if-nez p1, :cond_1

    .line 256
    const-string v19, "SimplyDo"

    const-string v20, "SimplyDoActivity.onCreate()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    :goto_0
    sput-object p0, Lkdk/android/simplydo/SimplyDoActivity;->instance:Lkdk/android/simplydo/SimplyDoActivity;

    .line 278
    return-void

    .line 260
    :cond_1
    const-string v19, "SimplyDo"

    const-string v20, "SimplyDoActivity.onCreate() with a supplied state"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v19, "currentListId"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 263
    .local v16, "listId":Ljava/lang/Integer;
    if-eqz v16, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Lkdk/android/simplydo/DataViewer;->fetchList(I)Lkdk/android/simplydo/ListDesc;

    move-result-object v14

    .line 266
    .local v14, "listDesc":Lkdk/android/simplydo/ListDesc;
    if-eqz v14, :cond_2

    .line 268
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lkdk/android/simplydo/SimplyDoActivity;->listSelected(Lkdk/android/simplydo/ListDesc;Z)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v19, "SimplyDo"

    const-string v20, "SimplyDoActivity.onCreate(): savedInstanceState had bad list ID"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x5

    .line 512
    const-string v2, "SimplyDo"

    const-string v3, "SimplyDoActivity.onCreateDialog(): Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 554
    :goto_0
    if-nez v0, :cond_0

    .line 556
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 559
    :cond_0
    const-string v2, "SimplyDo"

    const-string v3, "SimplyDoActivity.onCreateDialog(): Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-object v0

    .line 520
    :pswitch_0
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->listDeleteBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 521
    goto :goto_0

    .line 525
    :pswitch_1
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemDeleteBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 526
    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemEditBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 531
    .local v1, "editDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 532
    move-object v0, v1

    .line 533
    goto :goto_0

    .line 537
    .end local v1    # "editDialog":Landroid/app/AlertDialog;
    :pswitch_3
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->listEditBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 538
    .restart local v1    # "editDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 539
    move-object v0, v1

    .line 540
    goto :goto_0

    .line 544
    .end local v1    # "editDialog":Landroid/app/AlertDialog;
    :pswitch_4
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->moveItemToAction:Lkdk/android/simplydo/MoveToAction;

    invoke-virtual {v2}, Lkdk/android/simplydo/MoveToAction;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 545
    goto :goto_0

    .line 549
    :pswitch_5
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->deleteInactiveAction:Lkdk/android/simplydo/DeleteInactiveAction;

    invoke-virtual {v2}, Lkdk/android/simplydo/DeleteInactiveAction;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 388
    const-string v0, "SimplyDo"

    const-string v1, "SimplyDoActivity.onCreateOptionsMenu() called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "SimplyDo"

    const-string v1, "SimplyDoActivity.onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 357
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v0}, Lkdk/android/simplydo/DataViewer;->close()V

    .line 359
    const/4 v0, 0x0

    sput-object v0, Lkdk/android/simplydo/SimplyDoActivity;->instance:Lkdk/android/simplydo/SimplyDoActivity;

    .line 360
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 425
    const-string v2, "SimplyDo"

    const-string v4, "SimplyDoActivity.onMenuItemSelected() called"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 505
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 431
    :pswitch_0
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v2}, Lkdk/android/simplydo/DataViewer;->getSelectedList()Lkdk/android/simplydo/ListDesc;

    move-result-object v0

    .line 432
    .local v0, "currentList":Lkdk/android/simplydo/ListDesc;
    if-nez v0, :cond_0

    .line 434
    const-string v2, "SimplyDo"

    const-string v4, "Delete inactive called but selected list was null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_0
    const-string v2, "SimplyDo"

    const-string v4, "Deleting Inactive"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->deleteInactiveAction:Lkdk/android/simplydo/DeleteInactiveAction;

    const/16 v4, 0xcd

    invoke-virtual {v2, v4}, Lkdk/android/simplydo/DeleteInactiveAction;->deleteInactive(I)V

    goto :goto_0

    .line 445
    .end local v0    # "currentList":Lkdk/android/simplydo/ListDesc;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lkdk/android/simplydo/SimplyDoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lkdk/android/simplydo/SettingsActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .local v1, "settingsActivity":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lkdk/android/simplydo/SimplyDoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    .end local v1    # "settingsActivity":Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemListSorter:Lkdk/android/simplydo/ItemListSorter;

    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v4}, Lkdk/android/simplydo/DataViewer;->getItemData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkdk/android/simplydo/ItemListSorter;->sort(Ljava/util/List;)V

    .line 452
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v2}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 456
    :pswitch_3
    const-string v2, "SimplyDo"

    const-string v4, "Got Delete List"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->showDialog(I)V

    goto :goto_0

    .line 461
    :pswitch_4
    const-string v2, "SimplyDo"

    const-string v4, "Got Delete Item"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v2}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->showDialog(I)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-direct {p0}, Lkdk/android/simplydo/SimplyDoActivity;->contextDeleteItem()V

    goto :goto_0

    .line 473
    :pswitch_5
    const-string v2, "SimplyDo"

    const-string v4, "Got Edit Item"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/16 v2, 0xcb

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->showDialog(I)V

    goto :goto_0

    .line 477
    :pswitch_6
    const-string v2, "SimplyDo"

    const-string v4, "Got Edit List"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v2, 0xca

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->showDialog(I)V

    goto :goto_0

    .line 481
    :pswitch_7
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    if-nez v2, :cond_2

    .line 483
    const-string v2, "SimplyDo"

    const-string v4, "Toggle star but no context item!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 486
    :cond_2
    const-string v2, "SimplyDo"

    const-string v4, "Toggling star"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    iget-object v5, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v2}, Lkdk/android/simplydo/ItemDesc;->isStar()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-interface {v4, v5, v2}, Lkdk/android/simplydo/DataViewer;->updateItemStarness(Lkdk/android/simplydo/ItemDesc;Z)V

    .line 489
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemListSorter:Lkdk/android/simplydo/ItemListSorter;

    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v2, v4}, Lkdk/android/simplydo/ItemListSorter;->markStarredUpdate(Lkdk/android/simplydo/ItemDesc;)V

    .line 490
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v2}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 488
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 493
    :pswitch_8
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    if-nez v2, :cond_4

    .line 495
    const-string v2, "SimplyDo"

    const-string v4, "Move item selected but no context item!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 498
    :cond_4
    const-string v2, "SimplyDo"

    const-string v4, "Displaying move item dialog"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v2, 0xcc

    invoke-virtual {p0, v2}, Lkdk/android/simplydo/SimplyDoActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 567
    const-string v0, "SimplyDo"

    const-string v1, "SimplyDoActivity.onPrepareDialog(): Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    packed-switch p1, :pswitch_data_0

    .line 602
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 606
    :goto_0
    const-string v0, "SimplyDo"

    const-string v1, "SimplyDoActivity.onPrepareDialog(): Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void

    .line 572
    :pswitch_0
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemEditView:Landroid/widget/EditText;

    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ItemDesc;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 578
    :cond_0
    const-string v0, "SimplyDo"

    const-string v1, "onPrepareDialog()/DIALOG_ITEM_EDIT called for nonexistant item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :pswitch_1
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxList:Lkdk/android/simplydo/ListDesc;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->listEditView:Landroid/widget/EditText;

    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 588
    :cond_1
    const-string v0, "SimplyDo"

    const-string v1, "onPrepareDialog()/DIALOG_LIST_EDIT called for nonexistant list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :pswitch_2
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity;->moveItemToAction:Lkdk/android/simplydo/MoveToAction;

    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v0, p2, v1}, Lkdk/android/simplydo/MoveToAction;->prepareDialog(Landroid/app/Dialog;Lkdk/android/simplydo/ItemDesc;)V

    goto :goto_0

    .line 598
    :cond_2
    const-string v0, "SimplyDo"

    const-string v1, "onPrepareDialog()/DIALOG_ITEM_MOVE called for nonexistant item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 396
    const-string v7, "SimplyDo"

    const-string v8, "SimplyDoActivity.onPrepareOptionsMenu() called"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 399
    const v7, 0x7f080011

    invoke-virtual {p0, v7}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewSwitcher;

    .line 400
    .local v4, "viewSwitch":Landroid/widget/ViewSwitcher;
    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v7

    if-eqz v7, :cond_2

    move v1, v5

    .line 402
    .local v1, "isItemDisplay":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 404
    const/16 v7, 0x64

    const-string v8, "Delete Inactive"

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 405
    .local v0, "deleteInactiveMI":Landroid/view/MenuItem;
    const v7, 0x108003c

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 408
    .end local v0    # "deleteInactiveMI":Landroid/view/MenuItem;
    :cond_0
    const/16 v7, 0x6a

    const-string v8, "Settings"

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 409
    .local v2, "settingsMI":Landroid/view/MenuItem;
    const v7, 0x1080049

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 411
    if-eqz v1, :cond_1

    .line 413
    const/16 v7, 0x6b

    const-string v8, "Sort Now"

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 414
    .local v3, "sortNowMI":Landroid/view/MenuItem;
    const v6, 0x108009d

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 417
    .end local v3    # "sortNowMI":Landroid/view/MenuItem;
    :cond_1
    return v5

    .end local v1    # "isItemDisplay":Z
    .end local v2    # "settingsMI":Landroid/view/MenuItem;
    :cond_2
    move v1, v6

    .line 400
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 334
    const-string v1, "SimplyDo"

    const-string v2, "SimplyDoActivity.onSaveInstanceState() called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 338
    iget-object v1, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v1}, Lkdk/android/simplydo/DataViewer;->getSelectedList()Lkdk/android/simplydo/ListDesc;

    move-result-object v0

    .line 339
    .local v0, "selectedList":Lkdk/android/simplydo/ListDesc;
    if-eqz v0, :cond_0

    .line 341
    const-string v1, "currentListId"

    invoke-virtual {v0}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v1, "currentListId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 309
    const-string v3, "SimplyDo"

    const-string v4, "SimplyDoActivity.onStart(): called"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 313
    invoke-virtual {p0}, Lkdk/android/simplydo/SimplyDoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 315
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "itemSorting"

    const-string v4, "activityStarred"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "itemSort":Ljava/lang/String;
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemListSorter:Lkdk/android/simplydo/ItemListSorter;

    invoke-virtual {v3, v0}, Lkdk/android/simplydo/ItemListSorter;->setSortingMode(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemListSorter:Lkdk/android/simplydo/ItemListSorter;

    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v4}, Lkdk/android/simplydo/DataViewer;->getItemData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkdk/android/simplydo/ItemListSorter;->sort(Ljava/util/List;)V

    .line 320
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v3}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 322
    const-string v3, "listSorting"

    const-string v4, "alphabetical"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "listSort":Ljava/lang/String;
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->listListSorter:Lkdk/android/simplydo/ListListSorter;

    invoke-virtual {v3, v1}, Lkdk/android/simplydo/ListListSorter;->setSortingMode(Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->listListSorter:Lkdk/android/simplydo/ListListSorter;

    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v4}, Lkdk/android/simplydo/DataViewer;->getListData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkdk/android/simplydo/ListListSorter;->sort(Ljava/util/List;)V

    .line 327
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v3}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 328
    return-void
.end method
