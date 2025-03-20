.class Lcom/fsck/k9/mailstore/StoreSchemaDefinition$RealMigrationsHelper;
.super Ljava/lang/Object;
.source "StoreSchemaDefinition.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/StoreSchemaDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealMigrationsHelper"
.end annotation


# instance fields
.field private final localStore:Lcom/fsck/k9/mailstore/LocalStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;)V
    .locals 0
    .param p1, "localStore"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/fsck/k9/mailstore/StoreSchemaDefinition$RealMigrationsHelper;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 222
    return-void
.end method


# virtual methods
.method public getAccount()Lcom/fsck/k9/Account;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StoreSchemaDefinition$RealMigrationsHelper;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StoreSchemaDefinition$RealMigrationsHelper;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StoreSchemaDefinition$RealMigrationsHelper;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    return-object v0
.end method

.method public getStorage()Lcom/fsck/k9/preferences/Storage;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StoreSchemaDefinition$RealMigrationsHelper;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v0

    return-object v0
.end method

.method public serializeFlags(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "flags":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Flag;>;"
    invoke-static {p1}, Lcom/fsck/k9/mailstore/LocalStore;->serializeFlags(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
