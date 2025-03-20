.class public final enum Lcom/fsck/k9/Account$DeletePolicy;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeletePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/Account$DeletePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/Account$DeletePolicy;

.field public static final enum MARK_AS_READ:Lcom/fsck/k9/Account$DeletePolicy;

.field public static final enum NEVER:Lcom/fsck/k9/Account$DeletePolicy;

.field public static final enum ON_DELETE:Lcom/fsck/k9/Account$DeletePolicy;

.field public static final enum SEVEN_DAYS:Lcom/fsck/k9/Account$DeletePolicy;


# instance fields
.field public final setting:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/fsck/k9/Account$DeletePolicy;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v2, v2}, Lcom/fsck/k9/Account$DeletePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/Account$DeletePolicy;->NEVER:Lcom/fsck/k9/Account$DeletePolicy;

    .line 76
    new-instance v0, Lcom/fsck/k9/Account$DeletePolicy;

    const-string v1, "SEVEN_DAYS"

    invoke-direct {v0, v1, v3, v3}, Lcom/fsck/k9/Account$DeletePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/Account$DeletePolicy;->SEVEN_DAYS:Lcom/fsck/k9/Account$DeletePolicy;

    .line 77
    new-instance v0, Lcom/fsck/k9/Account$DeletePolicy;

    const-string v1, "ON_DELETE"

    invoke-direct {v0, v1, v4, v4}, Lcom/fsck/k9/Account$DeletePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/Account$DeletePolicy;->ON_DELETE:Lcom/fsck/k9/Account$DeletePolicy;

    .line 78
    new-instance v0, Lcom/fsck/k9/Account$DeletePolicy;

    const-string v1, "MARK_AS_READ"

    invoke-direct {v0, v1, v5, v5}, Lcom/fsck/k9/Account$DeletePolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/Account$DeletePolicy;->MARK_AS_READ:Lcom/fsck/k9/Account$DeletePolicy;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/Account$DeletePolicy;

    sget-object v1, Lcom/fsck/k9/Account$DeletePolicy;->NEVER:Lcom/fsck/k9/Account$DeletePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/Account$DeletePolicy;->SEVEN_DAYS:Lcom/fsck/k9/Account$DeletePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/Account$DeletePolicy;->ON_DELETE:Lcom/fsck/k9/Account$DeletePolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/Account$DeletePolicy;->MARK_AS_READ:Lcom/fsck/k9/Account$DeletePolicy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/Account$DeletePolicy;->$VALUES:[Lcom/fsck/k9/Account$DeletePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "setting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    .line 84
    return-void
.end method

.method public static fromInt(I)Lcom/fsck/k9/Account$DeletePolicy;
    .locals 5
    .param p0, "initialSetting"    # I

    .prologue
    .line 91
    invoke-static {}, Lcom/fsck/k9/Account$DeletePolicy;->values()[Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 92
    .local v0, "policy":Lcom/fsck/k9/Account$DeletePolicy;
    iget v4, v0, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    if-ne v4, p0, :cond_0

    .line 93
    return-object v0

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "policy":Lcom/fsck/k9/Account$DeletePolicy;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeletePolicy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$DeletePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/fsck/k9/Account$DeletePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$DeletePolicy;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/Account$DeletePolicy;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/fsck/k9/Account$DeletePolicy;->$VALUES:[Lcom/fsck/k9/Account$DeletePolicy;

    invoke-virtual {v0}, [Lcom/fsck/k9/Account$DeletePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/Account$DeletePolicy;

    return-object v0
.end method


# virtual methods
.method public preferenceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
