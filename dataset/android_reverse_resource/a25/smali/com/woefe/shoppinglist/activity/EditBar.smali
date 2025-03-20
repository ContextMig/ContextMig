.class public Lcom/woefe/shoppinglist/activity/EditBar;
.super Ljava/lang/Object;
.source "EditBar.java"

# interfaces
.implements Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/activity/EditBar$Mode;,
        Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;
    }
.end annotation


# static fields
.field private static final KEY_SAVED_DESCRIPTION:Ljava/lang/String; = "SAVED_DESCRIPTION"

.field private static final KEY_SAVED_MODE:Ljava/lang/String; = "SAVED_MODE"

.field private static final KEY_SAVED_QUANTITY:Ljava/lang/String; = "SAVED_QUANTITY"

.field private static final KEY_SAVE_IS_VISIBLE:Ljava/lang/String; = "SAVE_IS_VISIBLE"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final descriptionIndex:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptionText:Landroid/widget/EditText;

.field private final duplicateWarnText:Landroid/widget/TextView;

.field private final fab:Landroid/support/design/widget/FloatingActionButton;

.field private final layout:Landroid/widget/RelativeLayout;

.field private listener:Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;

.field private mode:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

.field private position:I

.field private final quantityText:Landroid/widget/EditText;

.field private shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionIndex:Ljava/util/Set;

    .line 64
    iput-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->ctx:Landroid/content/Context;

    const p2, 0x7f08006b

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->layout:Landroid/widget/RelativeLayout;

    const p2, 0x7f08002f

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    const v0, 0x7f08007c

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    const v0, 0x7f08007d

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->quantityText:Landroid/widget/EditText;

    const v0, 0x7f0800c0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->duplicateWarnText:Landroid/widget/TextView;

    .line 70
    sget-object v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->ADD:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->mode:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    .line 72
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->quantityText:Landroid/widget/EditText;

    new-instance v1, Lcom/woefe/shoppinglist/activity/EditBar$1;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/activity/EditBar$1;-><init>(Lcom/woefe/shoppinglist/activity/EditBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 82
    new-instance v0, Lcom/woefe/shoppinglist/activity/EditBar$2;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/activity/EditBar$2;-><init>(Lcom/woefe/shoppinglist/activity/EditBar;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p2, v0}, Lcom/woefe/shoppinglist/activity/EditBar;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    .line 90
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    new-instance v1, Lcom/woefe/shoppinglist/activity/EditBar$3;

    invoke-direct {v1, p0, p2}, Lcom/woefe/shoppinglist/activity/EditBar$3;-><init>(Lcom/woefe/shoppinglist/activity/EditBar;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f080058

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 114
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcom/woefe/shoppinglist/activity/EditBar$4;

    invoke-direct {p2, p0}, Lcom/woefe/shoppinglist/activity/EditBar$4;-><init>(Lcom/woefe/shoppinglist/activity/EditBar;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/activity/EditBar;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->onConfirm()V

    return-void
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/activity/EditBar;Landroid/widget/ImageButton;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/woefe/shoppinglist/activity/EditBar;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/woefe/shoppinglist/activity/EditBar;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/EditBar;->checkDuplicate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/woefe/shoppinglist/activity/EditBar;)Landroid/support/design/widget/FloatingActionButton;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->fab:Landroid/support/design/widget/FloatingActionButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/woefe/shoppinglist/activity/EditBar;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/woefe/shoppinglist/activity/EditBar;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->showFAB()V

    return-void
.end method

.method static synthetic access$600(Lcom/woefe/shoppinglist/activity/EditBar;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->hideFAB()V

    return-void
.end method

.method private checkDuplicate(Ljava/lang/String;)V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->mode:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    sget-object v1, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->ADD:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionIndex:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->duplicateWarnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->ctx:Landroid/content/Context;

    const v2, 0x7f0d0038

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->duplicateWarnText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->duplicateWarnText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private hideFAB()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    return-void
.end method

.method private onConfirm()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->quantityText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->ctx:Landroid/content/Context;

    const v1, 0x7f0d003d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->mode:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    sget-object v3, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->ADD:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    if-ne v2, v3, :cond_1

    .line 151
    iget-object v2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->listener:Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;

    invoke-interface {v2, v0, v1}, Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;->onNewItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->mode:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    sget-object v3, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->EDIT:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    if-ne v2, v3, :cond_2

    .line 154
    iget-object v2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->listener:Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;

    iget v3, p0, Lcom/woefe/shoppinglist/activity/EditBar;->position:I

    invoke-interface {v2, v3, v0, v1}, Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;->onEditSave(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->quantityText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private prepare(Lcom/woefe/shoppinglist/activity/EditBar$Mode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->mode:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    .line 174
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->quantityText:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setButtonEnabled(Landroid/widget/ImageButton;Z)V
    .locals 0

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 137
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setClickable(Z)V

    if-eqz p2, :cond_0

    const/16 p2, 0xff

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    .line 138
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    return-void
.end method

.method private show()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 235
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->ctx:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private showFAB()V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEditBarListener(Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->listener:Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;

    return-void
.end method

.method public connectShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V
    .locals 1

    .line 288
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    .line 289
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->addListener(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;)V

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/woefe/shoppinglist/activity/EditBar;->onShoppingListUpdate(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public disconnectShoppingList()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->removeListener(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;)V

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    :cond_0
    return-void
.end method

.method public enableAutoHideFAB(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 180
    new-instance v0, Lcom/woefe/shoppinglist/activity/EditBar$5;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/activity/EditBar$5;-><init>(Lcom/woefe/shoppinglist/activity/EditBar;)V

    .line 211
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 213
    new-instance v0, Lcom/woefe/shoppinglist/activity/EditBar$6;

    invoke-direct {v0, p0, v1}, Lcom/woefe/shoppinglist/activity/EditBar$6;-><init>(Lcom/woefe/shoppinglist/activity/EditBar;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public hide()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 243
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->quantityText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 244
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->duplicateWarnText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->duplicateWarnText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->ctx:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    .line 252
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->requestFocus()Z

    return-void
.end method

.method public isVisible()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onShoppingListUpdate(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V
    .locals 1

    .line 302
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->mode:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    sget-object v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->EDIT:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    if-ne p2, v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->hide()V

    return-void

    .line 306
    :cond_0
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionIndex:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 307
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionIndex:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->createDescriptionIndex()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/EditBar;->checkDuplicate(Ljava/lang/String;)V

    return-void
.end method

.method public removeEditBarListener(Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/EditBar;->listener:Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->listener:Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;

    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "SAVED_DESCRIPTION"

    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAVED_QUANTITY"

    .line 278
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SAVED_MODE"

    .line 279
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    const-string v3, "SAVE_IS_VISIBLE"

    .line 280
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    invoke-direct {p0, v2, v0, v1}, Lcom/woefe/shoppinglist/activity/EditBar;->prepare(Lcom/woefe/shoppinglist/activity/EditBar$Mode;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->layout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SAVED_DESCRIPTION"

    .line 270
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->descriptionText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SAVED_QUANTITY"

    .line 271
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->quantityText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SAVE_IS_VISIBLE"

    .line 272
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->isVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVED_MODE"

    .line 273
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->mode:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public showAdd()V
    .locals 3

    .line 168
    sget-object v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->ADD:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/woefe/shoppinglist/activity/EditBar;->prepare(Lcom/woefe/shoppinglist/activity/EditBar$Mode;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->show()V

    return-void
.end method

.method public showEdit(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/woefe/shoppinglist/activity/EditBar;->position:I

    .line 163
    sget-object p1, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->EDIT:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    invoke-direct {p0, p1, p2, p3}, Lcom/woefe/shoppinglist/activity/EditBar;->prepare(Lcom/woefe/shoppinglist/activity/EditBar$Mode;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/EditBar;->show()V

    return-void
.end method
