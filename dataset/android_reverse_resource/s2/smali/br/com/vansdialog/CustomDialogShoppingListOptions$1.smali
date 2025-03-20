.class Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;
.super Ljava/lang/Object;
.source "CustomDialogShoppingListOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/vansdialog/CustomDialogShoppingListOptions;->optionRename()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lbr/com/vansdialog/CustomDialogShoppingListOptions;

.field final synthetic val$edName:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7f0fbfa6dc49604eL    # -3.702832809904663E-304

    const-string v2, "br/com/vansdialog/CustomDialogShoppingListOptions$1"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lbr/com/vansdialog/CustomDialogShoppingListOptions;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iput-object p1, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->this$0:Lbr/com/vansdialog/CustomDialogShoppingListOptions;

    iput-object p2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->val$edName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->$jacocoInit()[Z

    move-result-object v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->this$0:Lbr/com/vansdialog/CustomDialogShoppingListOptions;

    invoke-static {v0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->access$000(Lbr/com/vansdialog/CustomDialogShoppingListOptions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->this$0:Lbr/com/vansdialog/CustomDialogShoppingListOptions;

    invoke-static {v2}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->access$100(Lbr/com/vansdialog/CustomDialogShoppingListOptions;)I

    move-result v2

    invoke-static {v0, v2}, Lbr/com/dao/ShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ShoppingList;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 131
    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->this$0:Lbr/com/vansdialog/CustomDialogShoppingListOptions;

    invoke-static {v2}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->access$000(Lbr/com/vansdialog/CustomDialogShoppingListOptions;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->val$edName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbr/com/bean/ShoppingList;->setName(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 132
    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->this$0:Lbr/com/vansdialog/CustomDialogShoppingListOptions;

    invoke-static {v2}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->access$000(Lbr/com/vansdialog/CustomDialogShoppingListOptions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lbr/com/dao/ShoppingListDAO;->update(Landroid/content/Context;Lbr/com/bean/ShoppingList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 137
    :goto_0
    iget-object v0, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->this$0:Lbr/com/vansdialog/CustomDialogShoppingListOptions;

    invoke-virtual {v0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->dismiss()V

    .line 138
    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    return-void

    .line 133
    :catch_0
    move-exception v0

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 135
    iget-object v2, p0, Lbr/com/vansdialog/CustomDialogShoppingListOptions$1;->this$0:Lbr/com/vansdialog/CustomDialogShoppingListOptions;

    invoke-static {v2}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->access$000(Lbr/com/vansdialog/CustomDialogShoppingListOptions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    goto :goto_0
.end method
