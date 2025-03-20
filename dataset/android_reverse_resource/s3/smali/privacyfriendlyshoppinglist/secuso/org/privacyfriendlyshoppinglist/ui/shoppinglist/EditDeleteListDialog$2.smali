.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;
.super Ljava/lang/Object;
.source "EditDeleteListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->getEditOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1c7fd10db950cf41L    # -1.9544155009875784E171

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->dismiss()V

    aput-boolean v4, v0, v4

    .line 127
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 132
    :goto_0
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    return-void

    .line 127
    :cond_0
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 129
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    move-result-object v2

    invoke-static {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->newEditInstance(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 130
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog$2;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/EditDeleteListDialog;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    move-result-object v2

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "List"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
