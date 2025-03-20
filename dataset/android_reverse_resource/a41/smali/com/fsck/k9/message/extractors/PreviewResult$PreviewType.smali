.class public final enum Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
.super Ljava/lang/Enum;
.source "PreviewResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/message/extractors/PreviewResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

.field public static final enum ENCRYPTED:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

.field public static final enum ERROR:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

.field public static final enum NONE:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

.field public static final enum TEXT:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->NONE:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .line 52
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->TEXT:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .line 53
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    const-string v1, "ENCRYPTED"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ENCRYPTED:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .line 54
    new-instance v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ERROR:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->NONE:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->TEXT:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ENCRYPTED:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ERROR:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->$VALUES:[Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->$VALUES:[Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    invoke-virtual {v0}, [Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    return-object v0
.end method
