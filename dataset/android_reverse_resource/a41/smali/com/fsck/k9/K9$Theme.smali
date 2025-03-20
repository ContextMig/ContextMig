.class public final enum Lcom/fsck/k9/K9$Theme;
.super Ljava/lang/Enum;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/K9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/K9$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/K9$Theme;

.field public static final enum DARK:Lcom/fsck/k9/K9$Theme;

.field public static final enum LIGHT:Lcom/fsck/k9/K9$Theme;

.field public static final enum USE_GLOBAL:Lcom/fsck/k9/K9$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 859
    new-instance v0, Lcom/fsck/k9/K9$Theme;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/K9$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    .line 860
    new-instance v0, Lcom/fsck/k9/K9$Theme;

    const-string v1, "DARK"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/K9$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    .line 861
    new-instance v0, Lcom/fsck/k9/K9$Theme;

    const-string v1, "USE_GLOBAL"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/K9$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    .line 858
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/K9$Theme;

    sget-object v1, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/K9$Theme;->$VALUES:[Lcom/fsck/k9/K9$Theme;

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
    .line 858
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 858
    const-class v0, Lcom/fsck/k9/K9$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/K9$Theme;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/K9$Theme;
    .locals 1

    .prologue
    .line 858
    sget-object v0, Lcom/fsck/k9/K9$Theme;->$VALUES:[Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v0}, [Lcom/fsck/k9/K9$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/K9$Theme;

    return-object v0
.end method
