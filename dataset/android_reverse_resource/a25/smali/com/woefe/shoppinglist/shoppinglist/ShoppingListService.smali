.class public Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;
.super Landroid/app/Service;
.source "ShoppingListService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShoppingListService"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private directoryStatus:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

.field private manager:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->manager:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    .line 42
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)V

    iput-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->directoryStatus:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

    return-object p0
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->manager:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 49
    sget-object v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 53
    new-instance p1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-direct {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;-><init>()V

    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->manager:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    .line 54
    new-instance p1, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

    invoke-direct {p1, p0}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->directoryStatus:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

    .line 55
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->manager:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->directoryStatus:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->getDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->onStart(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->manager:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->onStop()V

    .line 71
    new-instance p1, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

    invoke-direct {p1, p0}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->directoryStatus:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

    .line 72
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->manager:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    iget-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->directoryStatus:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->getDirectory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->onStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 77
    sget-object p1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->TAG:Ljava/lang/String;

    const-string p2, "onStartCommand() called"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .line 62
    sget-object v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind() called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 64
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->manager:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->onStop()V

    const/4 p1, 0x0

    return p1
.end method
