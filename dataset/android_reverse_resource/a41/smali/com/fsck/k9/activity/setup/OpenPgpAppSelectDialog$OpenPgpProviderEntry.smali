.class Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;
.super Ljava/lang/Object;
.source "OpenPgpAppSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenPgpProviderEntry"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private intent:Landroid/content/Intent;

.field private packageName:Ljava/lang/String;

.field private simpleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "simpleName"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->packageName:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->simpleName:Ljava/lang/String;

    .line 263
    iput-object p3, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 264
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "simpleName"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 268
    iput-object p4, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->intent:Landroid/content/Intent;

    .line 269
    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->simpleName:Ljava/lang/String;

    return-object v0
.end method
