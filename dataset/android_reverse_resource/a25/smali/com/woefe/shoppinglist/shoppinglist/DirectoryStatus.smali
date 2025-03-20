.class Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;
.super Ljava/lang/Object;
.source "DirectoryStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIRECTORY:Ljava/lang/String; = "ShoppingLists"


# instance fields
.field private directory:Ljava/lang/String;

.field private reason:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FILE_LOCATION"

    const-string v2, ""

    .line 43
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShoppingLists"

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    sget-object v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->IS_OK:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    invoke-direct {p0, v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->init(Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    sget-object v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->NOT_A_DIRECTORY:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    invoke-direct {p0, v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->init(Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    sget-object v0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->CANNOT_WRITE:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    invoke-direct {p0, v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->init(Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    sget-object p1, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->IS_OK:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    invoke-direct {p0, p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->init(Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private init(Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->reason:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    .line 60
    iput-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->directory:Ljava/lang/String;

    .line 61
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->directory:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->reason:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    return-object v0
.end method

.method public isFallback()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->reason:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    sget-object v1, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;->IS_OK:Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
