.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;
.super Ljava/lang/Object;
.source "SortListsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;

.field final synthetic val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2bb4fdd58a9c58d0L    # 3.8388904200264704E-98

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;

    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->lambda$onClick$0(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Ljava/util/List;Ljava/lang/String;ZLprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1, p2, p3, p4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->lambda$onClick$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Ljava/util/List;Ljava/lang/String;ZLprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;)V

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$onClick$0(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 88
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$onClick$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Ljava/util/List;Ljava/lang/String;ZLprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-interface {p0, p1, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->sortList(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 92
    invoke-virtual {p4, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;->reorderListView(Ljava/util/List;)V

    .line 93
    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->$jacocoInit()[Z

    move-result-object v3

    .line 73
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;

    aput-boolean v9, v3, v9

    .line 74
    new-instance v4, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    aput-boolean v9, v3, v5

    .line 75
    const-class v5, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-virtual {v4, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    .line 77
    .local v1, "shoppingListService":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;
    const-string v0, "sort.by.name"

    const/4 v4, 0x3

    aput-boolean v9, v3, v4

    .line 78
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;

    invoke-virtual {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->getPriority()Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    aput-boolean v9, v3, v4

    .line 82
    :goto_0
    const/4 v4, 0x6

    aput-boolean v9, v3, v4

    .line 83
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;

    invoke-virtual {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->getAscending()Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    const/4 v5, 0x7

    aput-boolean v9, v3, v5

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x8

    aput-boolean v9, v3, v6

    .line 87
    invoke-interface {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->getAllListItems()Lrx/Observable;

    move-result-object v6

    invoke-static {v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1$$Lambda$1;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v7

    const/16 v8, 0x9

    aput-boolean v9, v3, v8

    .line 88
    invoke-virtual {v6, v7}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v6

    invoke-static {v1, v5, v0, v4, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Ljava/util/List;Ljava/lang/String;ZLprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;)Lrx/functions/Action0;

    move-result-object v2

    const/16 v5, 0xa

    aput-boolean v9, v3, v5

    .line 89
    invoke-virtual {v6, v2}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v2

    const/16 v5, 0xb

    aput-boolean v9, v3, v5

    .line 94
    invoke-virtual {v2}, Lrx/Observable;->subscribe()Lrx/Subscription;

    const/16 v2, 0xc

    aput-boolean v9, v3, v2

    .line 97
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v5, 0xd

    aput-boolean v9, v3, v5

    .line 98
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v5, 0xe

    aput-boolean v9, v3, v5

    .line 99
    const-string v5, "sort_by_key"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v5, 0xf

    aput-boolean v9, v3, v5

    .line 100
    const-string v5, "sort_asc_dec_key"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0x10

    aput-boolean v9, v3, v4

    .line 101
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    const/16 v2, 0x11

    aput-boolean v9, v3, v2

    return-void

    .line 80
    :cond_0
    const-string v0, "sort.by.priority"

    .local v0, "criteria":Ljava/lang/String;
    const/4 v4, 0x5

    aput-boolean v9, v3, v4

    goto :goto_0
.end method
