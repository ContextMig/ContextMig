.class public Lkdk/android/simplydo/MoveToAction;
.super Ljava/lang/Object;
.source "MoveToAction.java"


# instance fields
.field private aa:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cancelClickedListener:Landroid/content/DialogInterface$OnClickListener;

.field private context:Landroid/content/Context;

.field private ctxItem:Lkdk/android/simplydo/ItemDesc;

.field private dataViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ListDesc;",
            ">;"
        }
    .end annotation
.end field

.field private dataViewer:Lkdk/android/simplydo/DataViewer;

.field private itemClickedListener:Landroid/content/DialogInterface$OnClickListener;

.field private itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

.field private listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

.field private listSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field private okButton:Landroid/widget/Button;

.field private selectedItem:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkdk/android/simplydo/DataViewer;Lkdk/android/simplydo/ListPropertiesAdapter;Lkdk/android/simplydo/ItemPropertiesAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataViewer"    # Lkdk/android/simplydo/DataViewer;
    .param p3, "listPropertiesAdapter"    # Lkdk/android/simplydo/ListPropertiesAdapter;
    .param p4, "itemPropertiesAdapter"    # Lkdk/android/simplydo/ItemPropertiesAdapter;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lkdk/android/simplydo/MoveToAction;->selectedItem:Ljava/lang/Integer;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/MoveToAction;->dataViewList:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lkdk/android/simplydo/MoveToAction;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lkdk/android/simplydo/MoveToAction;->dataViewer:Lkdk/android/simplydo/DataViewer;

    .line 58
    iput-object p3, p0, Lkdk/android/simplydo/MoveToAction;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    .line 59
    iput-object p4, p0, Lkdk/android/simplydo/MoveToAction;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    .line 61
    new-instance v0, Lkdk/android/simplydo/MoveToAction$1;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/MoveToAction$1;-><init>(Lkdk/android/simplydo/MoveToAction;)V

    iput-object v0, p0, Lkdk/android/simplydo/MoveToAction;->itemClickedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    new-instance v0, Lkdk/android/simplydo/MoveToAction$2;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/MoveToAction$2;-><init>(Lkdk/android/simplydo/MoveToAction;)V

    iput-object v0, p0, Lkdk/android/simplydo/MoveToAction;->listSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    new-instance v0, Lkdk/android/simplydo/MoveToAction$3;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/MoveToAction$3;-><init>(Lkdk/android/simplydo/MoveToAction;)V

    iput-object v0, p0, Lkdk/android/simplydo/MoveToAction;->cancelClickedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lkdk/android/simplydo/MoveToAction;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/MoveToAction;
    .param p1, "x1"    # Landroid/content/DialogInterface;
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lkdk/android/simplydo/MoveToAction;->itemClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic access$100(Lkdk/android/simplydo/MoveToAction;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/MoveToAction;

    .prologue
    .line 34
    invoke-direct {p0}, Lkdk/android/simplydo/MoveToAction;->listSelected()V

    return-void
.end method

.method static synthetic access$200(Lkdk/android/simplydo/MoveToAction;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/MoveToAction;

    .prologue
    .line 34
    invoke-direct {p0}, Lkdk/android/simplydo/MoveToAction;->endDialog()V

    return-void
.end method

.method private endDialog()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lkdk/android/simplydo/MoveToAction;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    .line 171
    iput-object v0, p0, Lkdk/android/simplydo/MoveToAction;->okButton:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lkdk/android/simplydo/MoveToAction;->dataViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lkdk/android/simplydo/MoveToAction;->aa:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 174
    return-void
.end method

.method private itemClicked(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToAction.itemClicked(): Selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lkdk/android/simplydo/MoveToAction;->okButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lkdk/android/simplydo/MoveToAction;->okButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdk/android/simplydo/MoveToAction;->selectedItem:Ljava/lang/Integer;

    .line 143
    return-void
.end method

.method private listSelected()V
    .locals 5

    .prologue
    .line 148
    iget-object v2, p0, Lkdk/android/simplydo/MoveToAction;->selectedItem:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 150
    const-string v2, "SimplyDo"

    const-string v3, "MoveToAction.listSelected(): called without a selected item"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v2, "SimplyDo"

    const-string v3, "MoveToAction.listSelected(): called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lkdk/android/simplydo/MoveToAction;->dataViewList:Ljava/util/List;

    iget-object v3, p0, Lkdk/android/simplydo/MoveToAction;->selectedItem:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdk/android/simplydo/ListDesc;

    .line 156
    .local v0, "listDesc":Lkdk/android/simplydo/ListDesc;
    iget-object v2, p0, Lkdk/android/simplydo/MoveToAction;->dataViewer:Lkdk/android/simplydo/DataViewer;

    iget-object v3, p0, Lkdk/android/simplydo/MoveToAction;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v0}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lkdk/android/simplydo/DataViewer;->moveItem(Lkdk/android/simplydo/ItemDesc;I)V

    .line 157
    iget-object v2, p0, Lkdk/android/simplydo/MoveToAction;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v2}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object v2, p0, Lkdk/android/simplydo/MoveToAction;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v2}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 160
    iget-object v2, p0, Lkdk/android/simplydo/MoveToAction;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lkdk/android/simplydo/MoveToAction;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    invoke-virtual {v4}, Lkdk/android/simplydo/ItemDesc;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " moved to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lkdk/android/simplydo/ListDesc;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 161
    .local v1, "t":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 163
    invoke-direct {p0}, Lkdk/android/simplydo/MoveToAction;->endDialog()V

    goto :goto_0
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 84
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lkdk/android/simplydo/MoveToAction;->context:Landroid/content/Context;

    const v4, 0x1090012

    invoke-direct {v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lkdk/android/simplydo/MoveToAction;->aa:Landroid/widget/ArrayAdapter;

    .line 86
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lkdk/android/simplydo/MoveToAction;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Move To"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 88
    iget-object v2, p0, Lkdk/android/simplydo/MoveToAction;->aa:Landroid/widget/ArrayAdapter;

    const/4 v3, -0x1

    iget-object v4, p0, Lkdk/android/simplydo/MoveToAction;->itemClickedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const-string v2, "OK"

    iget-object v3, p0, Lkdk/android/simplydo/MoveToAction;->listSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    const-string v2, "Cancel"

    iget-object v3, p0, Lkdk/android/simplydo/MoveToAction;->cancelClickedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 94
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public prepareDialog(Landroid/app/Dialog;Lkdk/android/simplydo/ItemDesc;)V
    .locals 7
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "ctxItem"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 100
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->aa:Landroid/widget/ArrayAdapter;

    if-nez v5, :cond_0

    .line 102
    const-string v5, "SimplyDo"

    const-string v6, "MoveToAction.prepareDialog() called before createDialog()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v5}, Lkdk/android/simplydo/DataViewer;->getSelectedList()Lkdk/android/simplydo/ListDesc;

    move-result-object v4

    .line 108
    .local v4, "selectedListDesc":Lkdk/android/simplydo/ListDesc;
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->dataViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 109
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->dataViewList:Ljava/util/List;

    iget-object v6, p0, Lkdk/android/simplydo/MoveToAction;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v6}, Lkdk/android/simplydo/DataViewer;->getListData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->dataViewList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->aa:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->clear()V

    .line 113
    invoke-virtual {v4}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v3

    .line 114
    .local v3, "selectedId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->dataViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 116
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->dataViewList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkdk/android/simplydo/ListDesc;

    .line 117
    .local v2, "listDesc":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v2}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 119
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->aa:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Lkdk/android/simplydo/ListDesc;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    .end local v2    # "listDesc":Lkdk/android/simplydo/ListDesc;
    :cond_2
    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->aa:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    move-object v0, p1

    .line 125
    check-cast v0, Landroid/app/AlertDialog;

    .line 126
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lkdk/android/simplydo/MoveToAction;->okButton:Landroid/widget/Button;

    .line 127
    iget-object v6, p0, Lkdk/android/simplydo/MoveToAction;->okButton:Landroid/widget/Button;

    iget-object v5, p0, Lkdk/android/simplydo/MoveToAction;->selectedItem:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iput-object p2, p0, Lkdk/android/simplydo/MoveToAction;->ctxItem:Lkdk/android/simplydo/ItemDesc;

    goto :goto_0

    .line 127
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method
