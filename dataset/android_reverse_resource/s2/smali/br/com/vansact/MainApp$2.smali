.class Lbr/com/vansact/MainApp$2;
.super Ljava/lang/Object;
.source "MainApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/vansact/MainApp;->addNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lbr/com/vansact/MainApp;

.field final synthetic val$edName:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansact/MainApp$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x23c7abb4470f096dL

    const-string v2, "br/com/vansact/MainApp$2"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansact/MainApp$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lbr/com/vansact/MainApp;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansact/MainApp$2;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    iput-object p1, p0, Lbr/com/vansact/MainApp$2;->this$0:Lbr/com/vansact/MainApp;

    iput-object p2, p0, Lbr/com/vansact/MainApp$2;->val$edName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp$2;->$jacocoInit()[Z

    move-result-object v1

    .line 161
    new-instance v0, Lbr/com/bean/ShoppingList;

    iget-object v2, p0, Lbr/com/vansact/MainApp$2;->this$0:Lbr/com/vansact/MainApp;

    invoke-direct {v0, v2}, Lbr/com/bean/ShoppingList;-><init>(Landroid/content/Context;)V

    aput-boolean v6, v1, v6

    .line 162
    iget-object v2, p0, Lbr/com/vansact/MainApp$2;->this$0:Lbr/com/vansact/MainApp;

    iget-object v3, p0, Lbr/com/vansact/MainApp$2;->val$edName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbr/com/bean/ShoppingList;->setName(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 165
    iget-object v2, p0, Lbr/com/vansact/MainApp$2;->this$0:Lbr/com/vansact/MainApp;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lbr/com/vansact/MainApp$2;->this$0:Lbr/com/vansact/MainApp;

    const-class v5, Lbr/com/vansact/AddItemShoppingList;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lbr/com/vansact/MainApp$2;->this$0:Lbr/com/vansact/MainApp;

    const v5, 0x7f05005f

    invoke-virtual {v4, v5}, Lbr/com/vansact/MainApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lbr/com/vansact/MainApp$2;->this$0:Lbr/com/vansact/MainApp;

    invoke-static {v5, v0}, Lbr/com/dao/ShoppingListDAO;->insert(Landroid/content/Context;Lbr/com/bean/ShoppingList;)Lbr/com/bean/ShoppingList;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbr/com/vansact/MainApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 170
    :goto_0
    const/4 v0, 0x7

    aput-boolean v6, v1, v0

    return-void

    .line 166
    :catch_0
    move-exception v0

    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    .line 167
    iget-object v2, p0, Lbr/com/vansact/MainApp$2;->this$0:Lbr/com/vansact/MainApp;

    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    .line 168
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    goto :goto_0
.end method
