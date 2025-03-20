.class public final enum Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
.super Ljava/lang/Enum;
.source "LocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/LocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoreMessages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

.field public static final enum FALSE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

.field public static final enum TRUE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

.field public static final enum UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;


# instance fields
.field private final databaseName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2335
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 2336
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    const-string v1, "FALSE"

    const-string v2, "false"

    invoke-direct {v0, v1, v4, v2}, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->FALSE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 2337
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    const-string v1, "TRUE"

    const-string v2, "true"

    invoke-direct {v0, v1, v5, v2}, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->TRUE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 2334
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    sget-object v1, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->FALSE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->TRUE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->$VALUES:[Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2342
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->databaseName:Ljava/lang/String;

    .line 2343
    return-void
.end method

.method public static fromDatabaseName(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    .locals 5
    .param p0, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 2346
    invoke-static {}, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->values()[Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 2347
    .local v0, "value":Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->databaseName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2348
    return-object v0

    .line 2346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2352
    .end local v0    # "value":Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2334
    const-class v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    .locals 1

    .prologue
    .line 2334
    sget-object v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->$VALUES:[Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    invoke-virtual {v0}, [Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    return-object v0
.end method


# virtual methods
.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->databaseName:Ljava/lang/String;

    return-object v0
.end method
