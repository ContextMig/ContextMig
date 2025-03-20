.class public final enum Lcom/fsck/k9/Account$MessageFormat;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/Account$MessageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/Account$MessageFormat;

.field public static final enum AUTO:Lcom/fsck/k9/Account$MessageFormat;

.field public static final enum HTML:Lcom/fsck/k9/Account$MessageFormat;

.field public static final enum TEXT:Lcom/fsck/k9/Account$MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    new-instance v0, Lcom/fsck/k9/Account$MessageFormat;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/Account$MessageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$MessageFormat;->TEXT:Lcom/fsck/k9/Account$MessageFormat;

    new-instance v0, Lcom/fsck/k9/Account$MessageFormat;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/Account$MessageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$MessageFormat;->HTML:Lcom/fsck/k9/Account$MessageFormat;

    new-instance v0, Lcom/fsck/k9/Account$MessageFormat;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/Account$MessageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$MessageFormat;->AUTO:Lcom/fsck/k9/Account$MessageFormat;

    .line 274
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/Account$MessageFormat;

    sget-object v1, Lcom/fsck/k9/Account$MessageFormat;->TEXT:Lcom/fsck/k9/Account$MessageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/Account$MessageFormat;->HTML:Lcom/fsck/k9/Account$MessageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/Account$MessageFormat;->AUTO:Lcom/fsck/k9/Account$MessageFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/Account$MessageFormat;->$VALUES:[Lcom/fsck/k9/Account$MessageFormat;

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
    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$MessageFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    const-class v0, Lcom/fsck/k9/Account$MessageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$MessageFormat;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/Account$MessageFormat;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/fsck/k9/Account$MessageFormat;->$VALUES:[Lcom/fsck/k9/Account$MessageFormat;

    invoke-virtual {v0}, [Lcom/fsck/k9/Account$MessageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/Account$MessageFormat;

    return-object v0
.end method
