.class public final enum Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
.super Ljava/lang/Enum;
.source "AutocryptStatusInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/message/AutocryptStatusInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecipientAutocryptStatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum AVAILABLE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum AVAILABLE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum DISCOURAGE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum DISCOURAGE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum NO_RECIPIENTS:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum RECOMMENDED_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum RECOMMENDED_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum UNAVAILABLE:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;


# instance fields
.field private final canEncrypt:Z

.field private final isConfirmed:Z

.field private final isMutual:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v1, "NO_RECIPIENTS"

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->NO_RECIPIENTS:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 103
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v4, "UNAVAILABLE"

    move v5, v9

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->UNAVAILABLE:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 104
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v4, "DISCOURAGE_UNCONFIRMED"

    move v5, v10

    move v6, v9

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 105
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v4, "DISCOURAGE_CONFIRMED"

    move v5, v11

    move v6, v9

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 106
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v4, "AVAILABLE_UNCONFIRMED"

    move v5, v12

    move v6, v9

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 107
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v4, "AVAILABLE_CONFIRMED"

    const/4 v5, 0x5

    move v6, v9

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 108
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v4, "RECOMMENDED_UNCONFIRMED"

    const/4 v5, 0x6

    move v6, v9

    move v7, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 109
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v4, "RECOMMENDED_CONFIRMED"

    const/4 v5, 0x7

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 110
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    const-string v4, "ERROR"

    const/16 v5, 0x8

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 101
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    sget-object v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->NO_RECIPIENTS:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->UNAVAILABLE:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->$VALUES:[Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .param p3, "canEncrypt"    # Z
    .param p4, "isConfirmed"    # Z
    .param p5, "isMutual"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-boolean p3, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt:Z

    .line 118
    iput-boolean p4, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isConfirmed:Z

    .line 119
    iput-boolean p5, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isMutual:Z

    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->$VALUES:[Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    invoke-virtual {v0}, [Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    return-object v0
.end method


# virtual methods
.method public canEncrypt()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt:Z

    return v0
.end method

.method public isConfirmed()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isConfirmed:Z

    return v0
.end method

.method public isMutual()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isMutual:Z

    return v0
.end method
