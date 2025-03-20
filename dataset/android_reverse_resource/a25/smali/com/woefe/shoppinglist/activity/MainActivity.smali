.class public Lcom/woefe/shoppinglist/activity/MainActivity;
.super Lcom/woefe/shoppinglist/activity/BinderActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;
.implements Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;
.implements Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/activity/MainActivity$NewListDialog;
    }
.end annotation


# static fields
.field private static final KEY_FRAGMENT:Ljava/lang/String; = "FRAGMENT"

.field private static final KEY_LIST_NAME:Ljava/lang/String; = "LIST_NAME"


# instance fields
.field private actionProvider:Landroid/support/v7/widget/ShareActionProvider;

.field private currentFragment:Landroid/app/Fragment;

.field private currentListName:Ljava/lang/String;

.field private drawerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private drawerContainer:Landroid/widget/LinearLayout;

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private drawerList:Landroid/widget/ListView;

.field private drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/BinderActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/activity/MainActivity;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->selectList(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/activity/MainActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->openSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/woefe/shoppinglist/activity/MainActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->updateDrawer()V

    return-void
.end method

.method static synthetic access$300(Lcom/woefe/shoppinglist/activity/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    return-object p0
.end method

.method private doShare()V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->getList(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0d003c

    const/4 v1, 0x1

    .line 180
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 184
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 185
    :try_start_1
    invoke-static {v1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListMarshaller;->marshall(Ljava/io/OutputStream;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V

    .line 186
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 187
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 192
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    .line 193
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->actionProvider:Landroid/support/v7/widget/ShareActionProvider;

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->actionProvider:Landroid/support/v7/widget/ShareActionProvider;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 184
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    .line 187
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-void
.end method

.method private openSettings()V
    .locals 2

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/woefe/shoppinglist/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private selectList(I)V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 347
    new-instance p1, Lcom/woefe/shoppinglist/activity/InvalidFragment;

    invoke-direct {p1}, Lcom/woefe/shoppinglist/activity/InvalidFragment;-><init>()V

    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->setFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->getList(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v0

    invoke-static {v0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->newInstance(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    move-result-object v0

    .line 353
    invoke-direct {p0, v0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->setFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void
.end method

.method private setFragment(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 337
    iput-object p2, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    .line 338
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    .line 339
    invoke-virtual {p0, p2}, Lcom/woefe/shoppinglist/activity/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->updateDrawer()V

    .line 341
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    .line 342
    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f08003e

    invoke-virtual {p2, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private sort(Z)V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->getList(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance v1, Lcom/woefe/shoppinglist/activity/MainActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity$3;-><init>(Lcom/woefe/shoppinglist/activity/MainActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method private sortByChecked(Z)V
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->getList(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    new-instance v1, Lcom/woefe/shoppinglist/activity/MainActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity$4;-><init>(Lcom/woefe/shoppinglist/activity/MainActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method private updateDrawer()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 361
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->getListNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 369
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    .line 161
    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-super {p0}, Lcom/woefe/shoppinglist/activity/BinderActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 75
    invoke-super {p0, p1}, Lcom/woefe/shoppinglist/activity/BinderActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a001c

    .line 76
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->setContentView(I)V

    const v0, 0x7f08004f

    .line 78
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f080078

    .line 79
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f080079

    .line 80
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerList:Landroid/widget/ListView;

    .line 81
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0a002d

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerAdapter:Landroid/widget/ArrayAdapter;

    .line 82
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerList:Landroid/widget/ListView;

    new-instance v1, Lcom/woefe/shoppinglist/activity/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/activity/MainActivity$1;-><init>(Lcom/woefe/shoppinglist/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0800c7

    .line 90
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f070065

    .line 91
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 92
    invoke-virtual {p0, v4}, Lcom/woefe/shoppinglist/activity/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 94
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 100
    :cond_0
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v3, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x7f0d0037

    const v6, 0x7f0d0036

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 101
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "FRAGMENT"

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    const-string v1, "LIST_NAME"

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-direct {p0, v0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->setFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f08001c

    .line 170
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 171
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ShareActionProvider;

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->actionProvider:Landroid/support/v7/widget/ShareActionProvider;

    const/4 p1, 0x1

    return p1
.end method

.method public onInputComplete(Ljava/lang/String;I)V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08001a

    if-ne p2, v0, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->addList(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/woefe/shoppinglist/shoppinglist/ShoppingListException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "List already exists"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :goto_0
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->selectList(I)V

    :cond_0
    return-void
.end method

.method public onListsChanged()V
    .locals 1

    .line 325
    new-instance v0, Lcom/woefe/shoppinglist/activity/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/activity/MainActivity$5;-><init>(Lcom/woefe/shoppinglist/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNegativeButtonClicked(I)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080022

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 250
    invoke-super {p0, p1}, Lcom/woefe/shoppinglist/activity/BinderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 241
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/woefe/shoppinglist/activity/MainActivity;->sort(Z)V

    return v2

    .line 247
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/woefe/shoppinglist/activity/MainActivity;->sortByChecked(Z)V

    return v2

    .line 244
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/woefe/shoppinglist/activity/MainActivity;->sortByChecked(Z)V

    return v2

    .line 238
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/woefe/shoppinglist/activity/MainActivity;->sort(Z)V

    return v2

    .line 235
    :pswitch_4
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->doShare()V

    return v2

    .line 209
    :pswitch_5
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->openSettings()V

    return v2

    .line 224
    :pswitch_6
    new-instance p1, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    const-class v0, Lcom/woefe/shoppinglist/activity/MainActivity$NewListDialog;

    invoke-direct {p1, p0, v0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;)V

    const v0, 0x7f08001a

    .line 225
    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->setAction(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0027

    .line 226
    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->setMessage(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0026

    .line 227
    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->setHint(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->show()V

    return v2

    :pswitch_7
    const p1, 0x7f0d002f

    .line 216
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->hasList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080012

    .line 218
    invoke-static {p0, p1, v0}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->show(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0039

    .line 220
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2

    :pswitch_8
    const p1, 0x7f0d004e

    .line 212
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f080011

    .line 213
    invoke-static {p0, p1, v0}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->show(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;I)V

    return v2

    .line 231
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/woefe/shoppinglist/activity/AboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f080011
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f08001a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositiveButtonClicked(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 296
    :pswitch_0
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->removeList(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0d0039

    const/4 v0, 0x1

    .line 298
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->updateDrawer()V

    const/4 p1, 0x0

    .line 301
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->selectList(I)V

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    instance-of p1, p1, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    if-eqz p1, :cond_1

    .line 292
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    check-cast p1, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->removeAllCheckedItems()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080011
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    invoke-super {p0, p1, p2}, Lcom/woefe/shoppinglist/activity/BinderActivity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 114
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "FRAGMENT"

    iget-object v2, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    :cond_0
    const-string v0, "LIST_NAME"

    .line 122
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1}, Lcom/woefe/shoppinglist/activity/BinderActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onServiceConnected(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/MainActivity;->updateDrawer()V

    .line 130
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->hasList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    invoke-direct {p0, v1}, Lcom/woefe/shoppinglist/activity/MainActivity;->selectList(I)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    iget-object v2, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->currentListName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->getList(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->setShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V

    .line 136
    :cond_2
    invoke-virtual {p1, p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->addListChangeListener(Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;)V

    .line 138
    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->usesFallbackDir()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f08003e

    .line 139
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0d005a

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const v0, 0x7f0d0025

    .line 142
    new-instance v1, Lcom/woefe/shoppinglist/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/activity/MainActivity$2;-><init>(Lcom/woefe/shoppinglist/activity/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 148
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_3
    return-void
.end method

.method protected onServiceDisconnected(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V
    .locals 0

    .line 154
    invoke-virtual {p1, p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->removeListChangeListener(Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;)V

    .line 155
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity;->drawerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method
