.class public final enum Lcom/fsck/k9/mailstore/DatabasePreviewType;
.super Ljava/lang/Enum;
.source "DatabasePreviewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mailstore/DatabasePreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mailstore/DatabasePreviewType;

.field public static final enum ENCRYPTED:Lcom/fsck/k9/mailstore/DatabasePreviewType;

.field public static final enum ERROR:Lcom/fsck/k9/mailstore/DatabasePreviewType;

.field public static final enum NONE:Lcom/fsck/k9/mailstore/DatabasePreviewType;

.field public static final enum TEXT:Lcom/fsck/k9/mailstore/DatabasePreviewType;


# instance fields
.field private final databaseValue:Ljava/lang/String;

.field private final previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    const-string v1, "NONE"

    const-string v2, "none"

    sget-object v3, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->NONE:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/fsck/k9/mailstore/DatabasePreviewType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;)V

    sput-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->NONE:Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 9
    new-instance v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    const-string v1, "TEXT"

    const-string v2, "text"

    sget-object v3, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->TEXT:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/fsck/k9/mailstore/DatabasePreviewType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;)V

    sput-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->TEXT:Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 10
    new-instance v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    const-string v1, "ENCRYPTED"

    const-string v2, "encrypted"

    sget-object v3, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ENCRYPTED:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/fsck/k9/mailstore/DatabasePreviewType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;)V

    sput-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->ENCRYPTED:Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 11
    new-instance v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    const-string v1, "ERROR"

    const-string v2, "error"

    sget-object v3, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ERROR:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/fsck/k9/mailstore/DatabasePreviewType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;)V

    sput-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->ERROR:Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/mailstore/DatabasePreviewType;

    sget-object v1, Lcom/fsck/k9/mailstore/DatabasePreviewType;->NONE:Lcom/fsck/k9/mailstore/DatabasePreviewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mailstore/DatabasePreviewType;->TEXT:Lcom/fsck/k9/mailstore/DatabasePreviewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mailstore/DatabasePreviewType;->ENCRYPTED:Lcom/fsck/k9/mailstore/DatabasePreviewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/mailstore/DatabasePreviewType;->ERROR:Lcom/fsck/k9/mailstore/DatabasePreviewType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->$VALUES:[Lcom/fsck/k9/mailstore/DatabasePreviewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;)V
    .locals 0
    .param p3, "databaseValue"    # Ljava/lang/String;
    .param p4, "previewType"    # Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->databaseValue:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .line 21
    return-void
.end method

.method public static fromDatabaseValue(Ljava/lang/String;)Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .locals 5
    .param p0, "databaseValue"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->values()[Lcom/fsck/k9/mailstore/DatabasePreviewType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 25
    .local v0, "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->getDatabaseValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    return-object v0

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown database value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static fromPreviewType(Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;)Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .locals 5
    .param p0, "previewType"    # Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .prologue
    .line 34
    invoke-static {}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->values()[Lcom/fsck/k9/mailstore/DatabasePreviewType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 35
    .local v0, "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    iget-object v4, v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    if-ne v4, p0, :cond_0

    .line 36
    return-object v0

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown preview type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->$VALUES:[Lcom/fsck/k9/mailstore/DatabasePreviewType;

    invoke-virtual {v0}, [Lcom/fsck/k9/mailstore/DatabasePreviewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mailstore/DatabasePreviewType;

    return-object v0
.end method


# virtual methods
.method public getDatabaseValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->databaseValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewType()Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    return-object v0
.end method
