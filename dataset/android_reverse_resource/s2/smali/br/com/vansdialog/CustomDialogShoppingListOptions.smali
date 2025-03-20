.class public Lbr/com/vansdialog/CustomDialogShoppingListOptions;
.super Landroid/app/Dialog;
.source "CustomDialogShoppingListOptions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private idShoppingList:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5038d2241afa20cL

    const-string v2, "br/com/vansdialog/CustomDialogShoppingListOptions"

    const/16 v3, 0x44

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    aput-boolean v5, v0, v3

    .line 38
    invoke-virtual {p0, v5}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->setCancelable(Z)V

    aput-boolean v5, v0, v5

    .line 39
    invoke-virtual {p0, v5}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->requestWindowFeature(I)Z

    aput-boolean v5, v0, v4

    .line 41
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f05003e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f050025

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f05001f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f050040

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f050045

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const v3, 0x7f050048

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-boolean v5, v0, v6

    .line 43
    new-instance v2, Lbr/com/vansadapt/OptionAdapter;

    invoke-direct {v2, p1, v1}, Lbr/com/vansadapt/OptionAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    aput-boolean v5, v0, v7

    .line 44
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x5

    aput-boolean v5, v0, v3

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x6

    aput-boolean v5, v0, v2

    .line 47
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x7

    aput-boolean v5, v0, v2

    .line 48
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    iput-object p1, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    .line 51
    iput p2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    .line 52
    invoke-virtual {p0, v1}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->setContentView(Landroid/view/View;)V

    .line 53
    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    return-void
.end method

.method static synthetic access$000(Lbr/com/vansdialog/CustomDialogShoppingListOptions;)Landroid/content/Context;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const/16 v2, 0x42

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lbr/com/vansdialog/CustomDialogShoppingListOptions;)I
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget v1, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    const/16 v2, 0x43

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private optionDelete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    iget-object v1, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    iget v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    invoke-static {v1, v2}, Lbr/com/dao/ShoppingListDAO;->delete(Landroid/content/Context;I)V

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    .line 117
    invoke-virtual {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->dismiss()V

    .line 118
    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    return-void
.end method

.method private optionDuplicate()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v1

    .line 93
    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    iget v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    invoke-static {v2, v3}, Lbr/com/dao/ShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ShoppingList;

    move-result-object v2

    const/16 v3, 0x23

    aput-boolean v6, v1, v3

    .line 94
    invoke-virtual {v2, v7}, Lbr/com/bean/ShoppingList;->setId(I)V

    const/16 v3, 0x24

    aput-boolean v6, v1, v3

    .line 96
    iget-object v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lbr/com/dao/ShoppingListDAO;->insert(Landroid/content/Context;Lbr/com/bean/ShoppingList;)Lbr/com/bean/ShoppingList;

    move-result-object v2

    const/16 v3, 0x25

    aput-boolean v6, v1, v3

    .line 98
    iget-object v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const/4 v4, 0x0

    iget v5, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    invoke-static {v3, v4, v5}, Lbr/com/dao/ItemShoppingListDAO;->selectAll(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/16 v2, 0x26

    aput-boolean v6, v1, v2

    .line 111
    :goto_0
    invoke-virtual {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->dismiss()V

    .line 113
    const/16 v2, 0x2e

    aput-boolean v6, v1, v2

    return-void

    .line 100
    :cond_0
    const/16 v3, 0x27

    aput-boolean v6, v1, v3

    .line 101
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x28

    aput-boolean v6, v1, v3

    .line 102
    iget-object v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v3, v4}, Lbr/com/dao/ItemShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ItemShoppingList;

    move-result-object v3

    const/16 v4, 0x29

    aput-boolean v6, v1, v4

    .line 103
    invoke-virtual {v3, v7}, Lbr/com/bean/ItemShoppingList;->setId(I)V

    const/16 v4, 0x2a

    aput-boolean v6, v1, v4

    .line 104
    invoke-virtual {v2}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lbr/com/bean/ItemShoppingList;->setIdShoppingList(I)V

    const/16 v4, 0x2b

    aput-boolean v6, v1, v4

    .line 105
    iget-object v4, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lbr/com/dao/ItemShoppingListDAO;->insert(Landroid/content/Context;Lbr/com/bean/ItemShoppingList;)Lbr/com/bean/ItemShoppingList;

    .line 106
    const/16 v3, 0x2c

    aput-boolean v6, v1, v3

    goto :goto_1

    .line 108
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x2d

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private optionRename()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x31

    aput-boolean v5, v0, v2

    .line 122
    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v3, 0x7f05003f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x32

    aput-boolean v5, v0, v2

    .line 123
    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v3, 0x7f050051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x33

    aput-boolean v5, v0, v2

    .line 124
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x34

    aput-boolean v5, v0, v3

    .line 125
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x35

    aput-boolean v5, v0, v3

    .line 126
    const v3, 0x104000a

    new-instance v4, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;

    invoke-direct {v4, p0, v2}, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;-><init>(Lbr/com/vansdialog/CustomDialogShoppingListOptions;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x36

    aput-boolean v5, v0, v2

    .line 141
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x37

    aput-boolean v5, v0, v2

    .line 143
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/16 v2, 0x38

    aput-boolean v5, v0, v2

    .line 144
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/16 v2, 0x39

    aput-boolean v5, v0, v2

    .line 145
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 146
    const/16 v1, 0x3a

    aput-boolean v5, v0, v1

    return-void
.end method

.method private optionShare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v0

    .line 153
    iget-object v1, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    iget v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    invoke-static {v1, v2}, Lbr/com/dao/ShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ShoppingList;

    move-result-object v1

    const/16 v2, 0x3c

    aput-boolean v5, v0, v2

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v4, 0x7f050046

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-boolean v5, v0, v2

    .line 156
    new-instance v2, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;

    iget-object v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3e

    aput-boolean v5, v0, v3

    .line 157
    iget-object v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    iget v4, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    invoke-virtual {v2, v4}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->export(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lbr/com/vansintent/CustomIntentOutside;->shareShoppingListFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    const/16 v1, 0x3f

    aput-boolean v5, v0, v1

    .line 158
    invoke-virtual {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->dismiss()V

    .line 159
    const/16 v1, 0x40

    aput-boolean v5, v0, v1

    return-void
.end method

.method private optionShareText()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    iget-object v1, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    iget v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    invoke-static {v1, v2}, Lbr/com/vansintent/CustomIntentOutside;->shareShoppingListText(Landroid/content/Context;I)V

    .line 150
    const/16 v1, 0x3b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->dismiss()V

    .line 164
    const/16 v1, 0x41

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->$jacocoInit()[Z

    move-result-object v1

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v3, 0x7f050025

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 66
    :goto_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v3, 0x7f05003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 70
    :goto_2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v3, 0x7f050040

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 78
    :goto_3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v3, 0x7f050045

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 82
    :goto_4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    const v3, 0x7f050048

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_5
    const/16 v0, 0x1e

    aput-boolean v4, v1, v0

    .line 90
    :goto_6
    const/16 v0, 0x22

    aput-boolean v4, v1, v0

    return-void

    .line 58
    :cond_0
    const/16 v0, 0xb

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v1, v0

    .line 59
    invoke-direct {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->optionDelete()V

    const/16 v0, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v0

    const/16 v2, 0x1f

    aput-boolean v4, v1, v2

    .line 86
    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x20

    aput-boolean v4, v1, v2

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x21

    aput-boolean v4, v1, v0

    goto :goto_6

    .line 62
    :cond_1
    const/16 v0, 0xe

    const/4 v2, 0x1

    :try_start_2
    aput-boolean v2, v1, v0

    .line 63
    invoke-direct {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->optionDuplicate()V

    const/16 v0, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto/16 :goto_1

    .line 66
    :cond_2
    const/16 v0, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 67
    invoke-direct {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->optionRename()V

    const/16 v0, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto/16 :goto_2

    .line 70
    :cond_3
    const/16 v0, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 72
    new-instance v0, Lbr/com/vansschedule/ScheduleShoppingList;

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->context:Landroid/content/Context;

    iget v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->idShoppingList:I

    invoke-direct {v0, v2, v3}, Lbr/com/vansschedule/ScheduleShoppingList;-><init>(Landroid/content/Context;I)V

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 73
    invoke-virtual {v0, p0}, Lbr/com/vansschedule/ScheduleShoppingList;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 74
    invoke-virtual {v0}, Lbr/com/vansschedule/ScheduleShoppingList;->show()V

    const/16 v0, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto/16 :goto_3

    .line 78
    :cond_4
    const/16 v0, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 79
    invoke-direct {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->optionShare()V

    const/16 v0, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto/16 :goto_4

    .line 82
    :cond_5
    const/16 v0, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 83
    invoke-direct {p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->optionShareText()V

    const/16 v0, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5
.end method
