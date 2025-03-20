.class public Lbr/com/vansact/AddItemShoppingList;
.super Landroid/app/Activity;
.source "AddItemShoppingList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final BARCODE_SCANNER_REQUEST_CODE:I = 0x2


# instance fields
.field private adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

.field private edDescription:Landroid/widget/AutoCompleteTextView;

.field private edQuantity:Landroid/widget/EditText;

.field private edUnitValue:Landroid/widget/EditText;

.field private headerView:Landroid/view/View;

.field private last:Ljava/lang/String;

.field private lvItensShoppingList:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private shoppingList:Lbr/com/bean/ShoppingList;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansact/AddItemShoppingList;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2a40de7573233e56L

    const-string v2, "br/com/vansact/AddItemShoppingList"

    const/16 v3, 0x109

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansact/AddItemShoppingList;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lbr/com/vansact/AddItemShoppingList;)Lbr/com/vansadapt/ItemShoppingListCursorAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    const/16 v2, 0x106

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lbr/com/vansact/AddItemShoppingList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V

    const/16 v1, 0x107

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lbr/com/vansact/AddItemShoppingList;)Lbr/com/bean/ShoppingList;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->shoppingList:Lbr/com/bean/ShoppingList;

    const/16 v2, 0x108

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private allItensAlreadyChecked()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v5

    .line 312
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v2}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0xad

    aput-boolean v3, v5, v2

    move v2, v3

    :goto_0
    const/16 v6, 0xaf

    aput-boolean v3, v5, v6

    .line 313
    const/16 v6, 0xb0

    aput-boolean v3, v5, v6

    move v1, v4

    .local v0, "allChecked":Z
    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v6}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    const/16 v6, 0xb1

    aput-boolean v3, v5, v6

    .line 314
    if-nez v2, :cond_1

    const/16 v2, 0xb2

    aput-boolean v3, v5, v2

    :goto_2
    const/16 v2, 0xb5

    aput-boolean v3, v5, v2

    move v0, v4

    .line 313
    :goto_3
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xb6

    aput-boolean v3, v5, v2

    move v2, v0

    goto :goto_1

    .line 312
    .end local v0    # "allChecked":Z
    .end local v1    # "i":I
    :cond_0
    const/16 v2, 0xae

    aput-boolean v3, v5, v2

    move v2, v4

    goto :goto_0

    .line 314
    .restart local v0    # "allChecked":Z
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v2, v1}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/bean/ItemShoppingList;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xb3

    aput-boolean v3, v5, v2

    goto :goto_2

    :cond_2
    const/16 v2, 0xb4

    aput-boolean v3, v5, v2

    move v0, v3

    goto :goto_3

    .line 317
    :cond_3
    const/16 v4, 0xb7

    aput-boolean v3, v5, v4

    return v2
.end method

.method private botaoInserirItem()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v7

    .line 209
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->isInsertOk(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x60

    aput-boolean v8, v7, v0

    .line 232
    :goto_0
    const/16 v0, 0x71

    aput-boolean v8, v7, v0

    return-void

    .line 209
    :cond_0
    const/16 v0, 0x61

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v7, v0

    .line 211
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x62

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 212
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/vansformat/CustomFloatFormat;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v0, 0x63

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 213
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/vansformat/CustomFloatFormat;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v0, 0x64

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 215
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getIdSelected()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x65

    const/4 v1, 0x1

    aput-boolean v1, v7, v0

    .line 216
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getIdSelected()I

    move-result v0

    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ItemShoppingList;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    .line 217
    invoke-virtual {v0, v3}, Lbr/com/bean/ItemShoppingList;->setDescription(Ljava/lang/String;)V

    const/16 v1, 0x67

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    .line 218
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/bean/ItemShoppingList;->setQuantity(F)V

    const/16 v1, 0x68

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    .line 219
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/bean/ItemShoppingList;->setUnitValue(F)V

    const/16 v1, 0x69

    const/4 v2, 0x1

    aput-boolean v2, v7, v1

    .line 220
    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->update(Landroid/content/Context;Lbr/com/bean/ItemShoppingList;)V

    .line 221
    const/16 v0, 0x6a

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :goto_1
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V

    .line 230
    const/16 v0, 0x6c

    aput-boolean v8, v7, v0

    goto/16 :goto_0

    .line 222
    :cond_1
    :try_start_1
    new-instance v0, Lbr/com/bean/ItemShoppingList;

    const/4 v1, 0x0

    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->shoppingList:Lbr/com/bean/ShoppingList;

    invoke-virtual {v2}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lbr/com/bean/ItemShoppingList;-><init>(IILjava/lang/String;FFZ)V

    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->insert(Landroid/content/Context;Lbr/com/bean/ItemShoppingList;)Lbr/com/bean/ItemShoppingList;

    const/16 v0, 0x6b

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    const/16 v1, 0x6d

    const/4 v2, 0x1

    :try_start_2
    aput-boolean v2, v7, v1

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x6e

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V

    .line 230
    const/16 v0, 0x6f

    aput-boolean v8, v7, v0

    goto/16 :goto_0

    .line 229
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V

    .line 230
    const/16 v1, 0x70

    aput-boolean v8, v7, v1

    throw v0
.end method

.method private cancelEditing()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 235
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->setIdSelected(I)V

    const/16 v1, 0x72

    aput-boolean v3, v0, v1

    .line 237
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    const/16 v1, 0x73

    aput-boolean v3, v0, v1

    .line 238
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->clearEditTexts()V

    const/16 v1, 0x74

    aput-boolean v3, v0, v1

    .line 239
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->refreshListView()V

    .line 240
    const/16 v1, 0x75

    aput-boolean v3, v0, v1

    return-void
.end method

.method private clearEditTexts()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 243
    const-string v1, ""

    invoke-direct {p0, v1, v2, v2}, Lbr/com/vansact/AddItemShoppingList;->setViewValues(Ljava/lang/String;FF)V

    .line 244
    const/16 v1, 0x76

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private deleteAll(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 321
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0xb8

    aput-boolean v4, v1, v0

    .line 340
    :goto_0
    const/16 v0, 0xc2

    aput-boolean v4, v1, v0

    return-void

    .line 321
    :cond_0
    const/16 v0, 0xb9

    aput-boolean v4, v1, v0

    .line 322
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xba

    aput-boolean v4, v1, v0

    .line 323
    const v0, 0x7f050021

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0xbb

    aput-boolean v4, v1, v0

    .line 324
    if-eqz p1, :cond_1

    const v0, 0x7f050059

    const/16 v3, 0xbc

    aput-boolean v4, v1, v3

    :goto_1
    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0xbe

    aput-boolean v4, v1, v0

    .line 325
    const v0, 0x7f05002d

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0xbf

    aput-boolean v4, v1, v0

    .line 326
    const v0, 0x7f05005d

    new-instance v3, Lbr/com/vansact/AddItemShoppingList$2;

    invoke-direct {v3, p0, p1}, Lbr/com/vansact/AddItemShoppingList$2;-><init>(Lbr/com/vansact/AddItemShoppingList;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0xc0

    aput-boolean v4, v1, v0

    .line 338
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/16 v0, 0xc1

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 324
    :cond_1
    const v0, 0x7f050057

    const/16 v3, 0xbd

    aput-boolean v4, v1, v3

    goto :goto_1
.end method

.method private descriptionAlreadySetted(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v3

    .line 302
    const/16 v4, 0xa8

    aput-boolean v2, v3, v4

    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v4}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/16 v4, 0xa9

    aput-boolean v2, v3, v4

    .line 303
    iget-object v4, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v4, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v4

    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    const/16 v1, 0xaa

    aput-boolean v2, v3, v1

    move v1, v2

    .line 308
    :goto_1
    return v1

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xab

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 308
    :cond_1
    const/16 v4, 0xac

    aput-boolean v2, v3, v4

    goto :goto_1
.end method

.method private isInsertOk(Landroid/widget/EditText;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v2

    .line 259
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x80

    aput-boolean v1, v2, v3

    .line 260
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/16 v3, 0x81

    aput-boolean v1, v2, v3

    .line 261
    const v3, 0x7f050027

    invoke-virtual {p0, v3}, Lbr/com/vansact/AddItemShoppingList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 262
    const/16 v3, 0x82

    aput-boolean v1, v2, v3

    .line 271
    :goto_0
    return v0

    .line 265
    :cond_0
    iget-object v3, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v3}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getIdSelected()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x83

    aput-boolean v1, v2, v0

    .line 271
    :goto_1
    const/16 v0, 0x87

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lbr/com/vansact/AddItemShoppingList;->descriptionAlreadySetted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v0, 0x84

    aput-boolean v1, v2, v0

    goto :goto_1

    :cond_2
    const/16 v3, 0x85

    aput-boolean v1, v2, v3

    .line 266
    const v3, 0x7f050029

    invoke-virtual {p0, v3}, Lbr/com/vansact/AddItemShoppingList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 268
    const/16 v3, 0x86

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private refreshAdapter()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 474
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->last:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->refreshCursorAdapter(Ljava/lang/String;)V

    .line 475
    const/16 v1, 0x105

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private refreshListView()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const v7, 0x7f0c0063

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v5

    .line 275
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->refreshAdapter()V

    const/16 v0, 0x88

    aput-boolean v2, v5, v0

    .line 276
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v1}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getDescriptions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lbr/com/dao/ItemShoppingListDAO;->selectAutoComplete(Landroid/content/Context;[Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x89

    aput-boolean v2, v5, v0

    .line 278
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x8a

    aput-boolean v2, v5, v0

    :goto_0
    const/16 v0, 0x8f

    aput-boolean v2, v5, v0

    move v1, v3

    :goto_1
    const/16 v0, 0x90

    aput-boolean v2, v5, v0

    .line 280
    invoke-virtual {p0, v7}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f050023

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x91

    aput-boolean v2, v5, v0

    .line 282
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v1, :cond_3

    const/16 v0, 0x92

    aput-boolean v2, v5, v0

    :goto_2
    const/16 v0, 0x95

    aput-boolean v2, v5, v0

    move v0, v4

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x96

    aput-boolean v2, v5, v0

    .line 283
    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v1, :cond_5

    const/16 v0, 0x97

    aput-boolean v2, v5, v0

    :goto_4
    const/16 v0, 0x9a

    aput-boolean v2, v5, v0

    move v0, v4

    :goto_5
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x9b

    aput-boolean v2, v5, v0

    .line 285
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v6, 0x9c

    aput-boolean v2, v5, v6

    .line 286
    if-eqz v1, :cond_7

    const/16 v4, 0x9d

    aput-boolean v2, v5, v4

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 288
    if-eqz v1, :cond_8

    const/16 v0, 0x9f

    aput-boolean v2, v5, v0

    .line 289
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0xa0

    aput-boolean v2, v5, v1

    .line 290
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v1}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getTotalValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xa1

    aput-boolean v2, v5, v0

    .line 292
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0xa2

    aput-boolean v2, v5, v1

    .line 293
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v1}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getTotalQuant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const/16 v0, 0xa3

    aput-boolean v2, v5, v0

    .line 299
    :goto_7
    const/16 v0, 0xa7

    aput-boolean v2, v5, v0

    return-void

    .line 278
    :cond_0
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowQuantity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8b

    aput-boolean v2, v5, v0

    :goto_8
    const/16 v0, 0x8e

    aput-boolean v2, v5, v0

    move v1, v2

    goto/16 :goto_1

    :cond_1
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8c

    aput-boolean v2, v5, v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x8d

    aput-boolean v2, v5, v0

    goto :goto_8

    .line 282
    :cond_3
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowQuantity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x93

    aput-boolean v2, v5, v0

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x94

    aput-boolean v2, v5, v0

    move v0, v3

    goto/16 :goto_3

    .line 283
    :cond_5
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x98

    aput-boolean v2, v5, v0

    goto/16 :goto_4

    :cond_6
    const/16 v0, 0x99

    aput-boolean v2, v5, v0

    move v0, v3

    goto/16 :goto_5

    .line 286
    :cond_7
    const/16 v3, 0x9e

    aput-boolean v2, v5, v3

    move v3, v4

    goto/16 :goto_6

    .line 295
    :cond_8
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa4

    aput-boolean v2, v5, v0

    goto :goto_7

    :cond_9
    const/16 v0, 0xa5

    aput-boolean v2, v5, v0

    .line 296
    invoke-virtual {p0, v7}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0xa6

    aput-boolean v2, v5, v0

    goto :goto_7
.end method

.method private setViewValues(Ljava/lang/String;FF)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 247
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x77

    aput-boolean v6, v1, v0

    .line 248
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    const/16 v0, 0x78

    aput-boolean v6, v1, v0

    .line 249
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    const/16 v0, 0x79

    aput-boolean v6, v1, v0

    .line 251
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    cmpl-float v0, p2, v7

    if-lez v0, :cond_0

    float-to-double v4, p2

    invoke-static {v4, v5}, Lbr/com/vansformat/CustomFloatFormat;->getSimpleFormatedValue(D)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7a

    aput-boolean v6, v1, v3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x7c

    aput-boolean v6, v1, v0

    .line 253
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    cmpl-float v0, p3, v7

    if-lez v0, :cond_1

    float-to-double v4, p3

    invoke-static {v4, v5}, Lbr/com/vansformat/CustomFloatFormat;->getSimpleFormatedValue(D)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d

    aput-boolean v6, v1, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const/16 v0, 0x7f

    aput-boolean v6, v1, v0

    return-void

    .line 251
    :cond_0
    const-string v0, ""

    const/16 v3, 0x7b

    aput-boolean v6, v1, v3

    goto :goto_0

    .line 253
    :cond_1
    const-string v0, ""

    const/16 v3, 0x7e

    aput-boolean v6, v1, v3

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 416
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/16 v1, 0xe8

    aput-boolean v3, v0, v1

    .line 424
    :goto_0
    const/16 v1, 0xec

    aput-boolean v3, v0, v1

    return-void

    .line 417
    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0xe9

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 419
    :pswitch_0
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    const-string v2, "SCAN_RESULT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xea

    aput-boolean v3, v0, v1

    .line 420
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    const/16 v1, 0xeb

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 180
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ItemShoppingList;

    move-result-object v0

    const/16 v2, 0x4c

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 182
    invoke-virtual {v0}, Lbr/com/bean/ItemShoppingList;->isChecked()Z

    move-result v2

    if-ne v2, p2, :cond_0

    const/16 v0, 0x4d

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    const/16 v0, 0x52

    aput-boolean v4, v1, v0

    .line 191
    :goto_1
    const/16 v0, 0x56

    aput-boolean v4, v1, v0

    return-void

    .line 182
    :cond_0
    const/16 v2, 0x4e

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v2

    .line 183
    invoke-virtual {v0, p2}, Lbr/com/bean/ItemShoppingList;->setChecked(Z)V

    const/16 v2, 0x4f

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 184
    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->update(Landroid/content/Context;Lbr/com/bean/ItemShoppingList;)V

    const/16 v0, 0x50

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 185
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->refreshListView()V

    const/16 v0, 0x51

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Lbr/com/vansexception/VansException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    const/16 v2, 0x53

    aput-boolean v4, v1, v2

    .line 188
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/16 v2, 0x54

    aput-boolean v4, v1, v2

    .line 189
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x55

    aput-boolean v4, v1, v0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v2, 0x8

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v3

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v7, v3, v7

    .line 56
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->setContentView(I)V

    const/4 v0, 0x2

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v0

    .line 59
    invoke-virtual {p0}, Lbr/com/vansact/AddItemShoppingList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const v4, 0x7f05005f

    invoke-virtual {p0, v4}, Lbr/com/vansact/AddItemShoppingList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lbr/com/dao/ShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ShoppingList;

    move-result-object v0

    iput-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->shoppingList:Lbr/com/bean/ShoppingList;
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x3

    aput-boolean v7, v3, v0

    .line 65
    :goto_0
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->shoppingList:Lbr/com/bean/ShoppingList;

    invoke-virtual {v0}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    aput-boolean v7, v3, v0

    .line 67
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->lvItensShoppingList:Landroid/widget/ListView;

    aput-boolean v7, v3, v2

    .line 68
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->lvItensShoppingList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x9

    aput-boolean v7, v3, v0

    .line 69
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->lvItensShoppingList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/16 v0, 0xa

    aput-boolean v7, v3, v0

    .line 71
    invoke-virtual {p0}, Lbr/com/vansact/AddItemShoppingList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03001e

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->headerView:Landroid/view/View;

    const/16 v0, 0xb

    aput-boolean v7, v3, v0

    .line 72
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->lvItensShoppingList:Landroid/widget/ListView;

    iget-object v4, p0, Lbr/com/vansact/AddItemShoppingList;->headerView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/16 v0, 0xc

    aput-boolean v7, v3, v0

    .line 74
    new-instance v0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    iget-object v4, p0, Lbr/com/vansact/AddItemShoppingList;->shoppingList:Lbr/com/bean/ShoppingList;

    invoke-virtual {v4}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v4

    invoke-direct {v0, p0, v4}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    const/16 v0, 0xd

    aput-boolean v7, v3, v0

    .line 75
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->lvItensShoppingList:Landroid/widget/ListView;

    iget-object v4, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0xe

    aput-boolean v7, v3, v0

    .line 77
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    const/16 v0, 0xf

    aput-boolean v7, v3, v0

    .line 78
    iget-object v4, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    aput-boolean v7, v3, v0

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v0, 0x12

    aput-boolean v7, v3, v0

    .line 79
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/16 v0, 0x13

    aput-boolean v7, v3, v0

    .line 80
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    new-instance v4, Lbr/com/vanswatch/CustomEditTextWatcher;

    iget-object v5, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lbr/com/vanswatch/CustomEditTextWatcher;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v0, 0x14

    aput-boolean v7, v3, v0

    .line 81
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v0, 0x15

    aput-boolean v7, v3, v0

    .line 83
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    const/16 v0, 0x16

    aput-boolean v7, v3, v0

    .line 84
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    new-instance v4, Lbr/com/vanswatch/CustomEditTextWatcher;

    iget-object v5, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    invoke-direct {v4, v5, v9}, Lbr/com/vanswatch/CustomEditTextWatcher;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v0, 0x17

    aput-boolean v7, v3, v0

    .line 85
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowQuantity(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v2, 0x18

    aput-boolean v7, v3, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v0, 0x1a

    aput-boolean v7, v3, v0

    .line 86
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v0, 0x1b

    aput-boolean v7, v3, v0

    .line 88
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    const/16 v0, 0x1c

    aput-boolean v7, v3, v0

    .line 89
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x1d

    aput-boolean v7, v3, v0

    .line 90
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lbr/com/vanswatch/CustomEditTextWatcher;

    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Lbr/com/vanswatch/CustomEditTextWatcher;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v0, 0x1e

    aput-boolean v7, v3, v0

    .line 92
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowQuantity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    aput-boolean v7, v3, v0

    .line 95
    :goto_3
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x24

    aput-boolean v7, v3, v0

    .line 100
    :goto_4
    const/16 v0, 0x28

    aput-boolean v7, v3, v0

    return-void

    .line 60
    :catch_0
    move-exception v0

    aput-boolean v7, v3, v9

    .line 61
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x5

    aput-boolean v7, v3, v4

    .line 62
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/4 v0, 0x6

    aput-boolean v7, v3, v0

    goto/16 :goto_0

    .line 78
    :cond_0
    const/16 v0, 0x11

    aput-boolean v7, v3, v0

    move v0, v2

    goto/16 :goto_1

    .line 85
    :cond_1
    const/16 v1, 0x19

    aput-boolean v7, v3, v1

    move v1, v2

    goto :goto_2

    .line 92
    :cond_2
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    aput-boolean v7, v3, v0

    goto :goto_3

    :cond_3
    const/16 v0, 0x21

    aput-boolean v7, v3, v0

    .line 93
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    const/16 v0, 0x22

    aput-boolean v7, v3, v0

    .line 94
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/16 v0, 0x23

    aput-boolean v7, v3, v0

    goto :goto_4

    .line 95
    :cond_4
    const/16 v0, 0x25

    aput-boolean v7, v3, v0

    .line 96
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    const/16 v0, 0x26

    aput-boolean v7, v3, v0

    .line 97
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/16 v0, 0x27

    aput-boolean v7, v3, v0

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 346
    invoke-virtual {p0}, Lbr/com/vansact/AddItemShoppingList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v2, 0x7f0d0000

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v0, 0xc3

    aput-boolean v3, v1, v0

    .line 348
    const v0, 0x7f0c006b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0xc4

    aput-boolean v3, v1, v2

    .line 349
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->mSearchView:Landroid/widget/SearchView;

    const/16 v0, 0xc5

    aput-boolean v3, v1, v0

    .line 350
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    const/16 v0, 0xc6

    aput-boolean v3, v1, v0

    .line 351
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->mSearchView:Landroid/widget/SearchView;

    const-string v2, "Pesquisar"

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 353
    const/16 v0, 0xc7

    aput-boolean v3, v1, v0

    return v3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8

    .prologue
    const v7, 0x7f0c004b

    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 436
    if-nez p2, :cond_0

    const/16 v2, 0xf1

    aput-boolean v6, v1, v2

    .line 457
    .local v0, "pos":I
    :goto_0
    const/16 v2, 0x101

    aput-boolean v6, v1, v2

    return-void

    .line 436
    .end local v0    # "pos":I
    :cond_0
    const/16 v2, 0xf2

    aput-boolean v6, v1, v2

    .line 437
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    const/16 v3, 0xf3

    aput-boolean v6, v1, v3

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v7, :cond_1

    const/16 v3, 0xf4

    aput-boolean v6, v1, v3

    .line 443
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v7, :cond_3

    const/16 v3, 0xf8

    aput-boolean v6, v1, v3

    .line 444
    :goto_2
    check-cast p1, Landroid/widget/EditText;

    const/16 v3, 0xfb

    aput-boolean v6, v1, v3

    .line 446
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v2, 0xfc

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 439
    :cond_1
    iget-object v3, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xf5

    aput-boolean v6, v1, v3

    goto :goto_1

    :cond_2
    const/16 v3, 0xf6

    aput-boolean v6, v1, v3

    .line 440
    iget-object v3, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0xf7

    aput-boolean v6, v1, v3

    goto :goto_1

    .line 443
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0c004c

    if-eq v3, v4, :cond_4

    const/16 v2, 0xf9

    aput-boolean v6, v1, v2

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xfa

    aput-boolean v6, v1, v3

    goto :goto_2

    .line 446
    :cond_5
    const/16 v3, 0xfd

    aput-boolean v6, v1, v3

    .line 447
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 449
    .restart local v0    # "pos":I
    if-lez v0, :cond_6

    const/16 v2, 0xfe

    aput-boolean v6, v1, v2

    .line 450
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v2, 0xff

    aput-boolean v6, v1, v2

    goto/16 :goto_0

    .line 452
    :cond_6
    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v2, 0x100

    aput-boolean v6, v1, v2

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    const v2, 0x7f0c0050

    invoke-virtual {p0, v2}, Lbr/com/vansact/AddItemShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 122
    add-int/lit8 v0, p3, -0x1

    const/16 v2, 0x30

    aput-boolean v5, v1, v2

    .line 123
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v2}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getIdSelected()I

    move-result v2

    iget-object v3, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v3, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/bean/ItemShoppingList;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/16 v0, 0x31

    aput-boolean v5, v1, v0

    .line 131
    :goto_0
    const/16 v0, 0x37

    aput-boolean v5, v1, v0

    .line 144
    :goto_1
    const/16 v0, 0x3f

    aput-boolean v5, v1, v0

    return-void

    .line 123
    :cond_0
    const/16 v2, 0x32

    aput-boolean v5, v1, v2

    .line 125
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    const/16 v2, 0x33

    aput-boolean v5, v1, v2

    .line 127
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v2, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v3, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v3

    iget-object v4, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v4, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v4

    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lbr/com/vansact/AddItemShoppingList;->setViewValues(Ljava/lang/String;FF)V

    const/16 v2, 0x34

    aput-boolean v5, v1, v2

    .line 128
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    iget-object v3, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v3, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/bean/ItemShoppingList;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->setIdSelected(I)V

    const/16 v0, 0x35

    aput-boolean v5, v1, v0

    .line 129
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->refreshAdapter()V

    const/16 v0, 0x36

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const/16 v0, 0x38

    aput-boolean v5, v1, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x39

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 136
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->findLastInserted(Landroid/content/Context;Ljava/lang/String;)Lbr/com/bean/ItemShoppingList;

    move-result-object v0

    const/16 v2, 0x3a

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 137
    invoke-virtual {v0}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v3

    invoke-virtual {v0}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v0

    invoke-direct {p0, v2, v3, v0}, Lbr/com/vansact/AddItemShoppingList;->setViewValues(Ljava/lang/String;FF)V
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/16 v0, 0x3b

    aput-boolean v5, v1, v0

    goto/16 :goto_1

    .line 138
    :catch_0
    move-exception v0

    const/16 v2, 0x3c

    aput-boolean v5, v1, v2

    .line 139
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/16 v2, 0x3d

    aput-boolean v5, v1, v2

    .line 140
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x3e

    aput-boolean v5, v1, v0

    goto/16 :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 149
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x40

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    const/16 v0, 0x48

    aput-boolean v5, v1, v0

    .line 174
    :goto_1
    const/16 v0, 0x4b

    aput-boolean v5, v1, v0

    return v5

    .line 150
    :cond_0
    add-int/lit8 v0, p3, -0x1

    const/16 v2, 0x41

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v2

    .line 151
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x42

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 152
    const v3, 0x7f050021

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x43

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f05005a

    invoke-virtual {p0, v4}, Lbr/com/vansact/AddItemShoppingList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v4, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v4

    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x44

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 154
    const v3, 0x7f05002d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x45

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 155
    const v3, 0x7f05005d

    new-instance v4, Lbr/com/vansact/AddItemShoppingList$1;

    invoke-direct {v4, p0, v0}, Lbr/com/vansact/AddItemShoppingList$1;-><init>(Lbr/com/vansact/AddItemShoppingList;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x46

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 168
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/16 v0, 0x47

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    const/16 v2, 0x49

    aput-boolean v5, v1, v2

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x4a

    aput-boolean v5, v1, v0

    goto/16 :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v2

    .line 195
    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    const/16 v1, 0x57

    aput-boolean v0, v2, v1

    .line 205
    :goto_0
    const/4 v1, 0x0

    const/16 v3, 0x5f

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_1
    return v0

    .line 195
    :cond_0
    iget-object v1, p0, Lbr/com/vansact/AddItemShoppingList;->edDescription:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x58

    aput-boolean v0, v2, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x59

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 197
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->botaoInserirItem()V
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/16 v1, 0x5a

    aput-boolean v0, v2, v1

    .line 202
    :goto_2
    const/16 v1, 0x5e

    aput-boolean v0, v2, v1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v1

    const/16 v3, 0x5b

    aput-boolean v0, v2, v3

    .line 199
    invoke-virtual {v1}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/16 v3, 0x5c

    aput-boolean v0, v2, v3

    .line 200
    invoke-virtual {v1}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x5d

    aput-boolean v0, v2, v1

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 428
    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/16 v1, 0xed

    aput-boolean v3, v0, v1

    .line 431
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    const/16 v2, 0xf0

    aput-boolean v3, v0, v2

    return v1

    .line 428
    :cond_0
    const/16 v1, 0xee

    aput-boolean v3, v0, v1

    .line 429
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    const/16 v1, 0xef

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v3

    .line 366
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/16 v2, 0xce

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0xe4

    aput-boolean v1, v3, v2

    .line 411
    :goto_0
    return v0

    .line 366
    :pswitch_1
    const/16 v2, 0xcf

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v3, v2

    .line 372
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V
    :try_end_1
    .catch Lbr/com/vansexception/VansException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    const/16 v0, 0xd7

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    .line 366
    :pswitch_2
    const/16 v2, 0xd0

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v3, v2

    .line 380
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->shoppingList:Lbr/com/bean/ShoppingList;

    invoke-virtual {v2}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v4

    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->allItensAlreadyChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xd9

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    move v2, v1

    :goto_1
    invoke-static {p0, v4, v2}, Lbr/com/dao/ItemShoppingListDAO;->checkAllItens(Landroid/content/Context;IZ)V

    const/16 v2, 0xdb

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 381
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V
    :try_end_2
    .catch Lbr/com/vansexception/VansException; {:try_start_2 .. :try_end_2} :catch_0

    .line 382
    const/16 v0, 0xdc

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    .line 366
    :pswitch_3
    const/16 v2, 0xd1

    const/4 v4, 0x1

    :try_start_3
    aput-boolean v4, v3, v2

    .line 385
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lbr/com/vansact/AddItemShoppingList;->deleteAll(Z)V
    :try_end_3
    .catch Lbr/com/vansexception/VansException; {:try_start_3 .. :try_end_3} :catch_0

    .line 386
    const/16 v0, 0xdd

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    .line 366
    :pswitch_4
    const/16 v2, 0xd2

    const/4 v4, 0x1

    :try_start_4
    aput-boolean v4, v3, v2

    .line 376
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lbr/com/vansact/AddItemShoppingList;->deleteAll(Z)V
    :try_end_4
    .catch Lbr/com/vansexception/VansException; {:try_start_4 .. :try_end_4} :catch_0

    .line 377
    const/16 v0, 0xd8

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    .line 366
    :pswitch_5
    const/16 v2, 0xd3

    const/4 v4, 0x1

    :try_start_5
    aput-boolean v4, v3, v2

    .line 400
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lbr/com/vansintent/CustomIntentOutside;->barcodeScanner(Landroid/content/Context;I)V

    const/16 v2, 0xe2

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 401
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V
    :try_end_5
    .catch Lbr/com/vansexception/VansException; {:try_start_5 .. :try_end_5} :catch_0

    .line 402
    const/16 v0, 0xe3

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    .line 366
    :pswitch_6
    const/16 v2, 0xd4

    const/4 v4, 0x1

    :try_start_6
    aput-boolean v4, v3, v2

    .line 389
    iget-object v2, p0, Lbr/com/vansact/AddItemShoppingList;->shoppingList:Lbr/com/bean/ShoppingList;

    invoke-virtual {v2}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v2

    invoke-static {p0, v2}, Lbr/com/vansintent/CustomIntentOutside;->shareShoppingListText(Landroid/content/Context;I)V

    const/16 v2, 0xde

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 390
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V
    :try_end_6
    .catch Lbr/com/vansexception/VansException; {:try_start_6 .. :try_end_6} :catch_0

    .line 391
    const/16 v0, 0xdf

    aput-boolean v1, v3, v0

    move v0, v1

    goto/16 :goto_0

    .line 366
    :pswitch_7
    const/16 v2, 0xd5

    const/4 v4, 0x1

    :try_start_7
    aput-boolean v4, v3, v2

    .line 394
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->cancelEditing()V

    const/16 v2, 0xe0

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 395
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lbr/com/vansprefs/UserPreferences;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lbr/com/vansact/AddItemShoppingList;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Lbr/com/vansexception/VansException; {:try_start_7 .. :try_end_7} :catch_0

    .line 396
    const/16 v0, 0xe1

    aput-boolean v1, v3, v0

    move v0, v1

    goto/16 :goto_0

    .line 368
    :pswitch_8
    :try_start_8
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->botaoInserirItem()V
    :try_end_8
    .catch Lbr/com/vansexception/VansException; {:try_start_8 .. :try_end_8} :catch_0

    .line 369
    const/16 v0, 0xd6

    aput-boolean v1, v3, v0

    move v0, v1

    goto/16 :goto_0

    .line 380
    :cond_0
    const/16 v2, 0xda

    const/4 v5, 0x1

    :try_start_9
    aput-boolean v5, v3, v2
    :try_end_9
    .catch Lbr/com/vansexception/VansException; {:try_start_9 .. :try_end_9} :catch_0

    move v2, v0

    goto/16 :goto_1

    .line 407
    :catch_0
    move-exception v2

    const/16 v4, 0xe5

    aput-boolean v1, v3, v4

    .line 408
    invoke-virtual {v2}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/16 v4, 0xe6

    aput-boolean v1, v3, v4

    .line 409
    invoke-virtual {v2}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 411
    const/16 v2, 0xe7

    aput-boolean v1, v3, v2

    goto/16 :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x7f0c0069
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v2

    .line 358
    const v0, 0x7f0c006a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->adapter:Lbr/com/vansadapt/ItemShoppingListCursorAdapter;

    invoke-virtual {v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getIdSelected()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v0, 0xca

    aput-boolean v1, v2, v0

    .line 359
    const v0, 0x7f0c006c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->allItensAlreadyChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xcb

    aput-boolean v1, v2, v4

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 360
    const/16 v0, 0xcd

    aput-boolean v1, v2, v0

    return v1

    .line 358
    :cond_0
    const/4 v0, 0x0

    const/16 v4, 0xc9

    aput-boolean v1, v2, v4

    goto :goto_0

    .line 359
    :cond_1
    const v0, 0x7f050043

    invoke-virtual {p0, v0}, Lbr/com/vansact/AddItemShoppingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xcc

    aput-boolean v1, v2, v4

    goto :goto_1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 468
    iput-object p1, p0, Lbr/com/vansact/AddItemShoppingList;->last:Ljava/lang/String;

    const/16 v1, 0x103

    aput-boolean v2, v0, v1

    .line 469
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->refreshAdapter()V

    .line 470
    const/16 v1, 0x104

    aput-boolean v2, v0, v1

    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 461
    const/4 v1, 0x0

    const/16 v2, 0x102

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansact/AddItemShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 104
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edUnitValue:Landroid/widget/EditText;

    invoke-static {p0, v4, v5}, Lbr/com/vansformat/CustomFloatFormat;->getMonetaryMaskedValue(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v0, 0x29

    aput-boolean v3, v1, v0

    .line 105
    iget-object v0, p0, Lbr/com/vansact/AddItemShoppingList;->edQuantity:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lbr/com/vansformat/CustomFloatFormat;->getSimpleFormatedValue(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v0, 0x2a

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 108
    invoke-direct {p0}, Lbr/com/vansact/AddItemShoppingList;->refreshListView()V
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const/16 v0, 0x2b

    aput-boolean v3, v1, v0

    .line 114
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    const/16 v0, 0x2f

    aput-boolean v3, v1, v0

    return-void

    .line 109
    :catch_0
    move-exception v0

    const/16 v2, 0x2c

    aput-boolean v3, v1, v2

    .line 110
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/16 v2, 0x2d

    aput-boolean v3, v1, v2

    .line 111
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x2e

    aput-boolean v3, v1, v0

    goto :goto_0
.end method
