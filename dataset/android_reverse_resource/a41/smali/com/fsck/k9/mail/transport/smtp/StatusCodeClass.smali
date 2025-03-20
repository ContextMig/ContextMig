.class final enum Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
.super Ljava/lang/Enum;
.source "StatusCodeClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

.field public static final enum PERMANENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

.field public static final enum PERSISTENT_TRANSIENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

.field public static final enum SUCCESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;


# instance fields
.field private final codeClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 5
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v3}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->SUCCESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 6
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    const-string v1, "PERSISTENT_TRANSIENT_FAILURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->PERSISTENT_TRANSIENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 7
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    const-string v1, "PERMANENT_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->PERMANENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->SUCCESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->PERSISTENT_TRANSIENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->PERMANENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->$VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "codeClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->codeClass:I

    .line 25
    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    .locals 6
    .param p0, "statusCodeClassString"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 15
    .local v1, "value":I
    invoke-static {}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->values()[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 16
    .local v0, "classEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    iget v5, v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->codeClass:I

    if-ne v5, v1, :cond_0

    .line 20
    .end local v0    # "classEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    :goto_1
    return-object v0

    .line 15
    .restart local v0    # "classEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    .end local v0    # "classEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->$VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    return-object v0
.end method
