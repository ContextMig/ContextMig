.class public final enum Lcom/fsck/k9/K9$SplitViewMode;
.super Ljava/lang/Enum;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/K9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SplitViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/K9$SplitViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/K9$SplitViewMode;

.field public static final enum ALWAYS:Lcom/fsck/k9/K9$SplitViewMode;

.field public static final enum NEVER:Lcom/fsck/k9/K9$SplitViewMode;

.field public static final enum WHEN_IN_LANDSCAPE:Lcom/fsck/k9/K9$SplitViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    new-instance v0, Lcom/fsck/k9/K9$SplitViewMode;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/K9$SplitViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$SplitViewMode;->ALWAYS:Lcom/fsck/k9/K9$SplitViewMode;

    .line 208
    new-instance v0, Lcom/fsck/k9/K9$SplitViewMode;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/K9$SplitViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$SplitViewMode;->NEVER:Lcom/fsck/k9/K9$SplitViewMode;

    .line 209
    new-instance v0, Lcom/fsck/k9/K9$SplitViewMode;

    const-string v1, "WHEN_IN_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/K9$SplitViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$SplitViewMode;->WHEN_IN_LANDSCAPE:Lcom/fsck/k9/K9$SplitViewMode;

    .line 206
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/K9$SplitViewMode;

    sget-object v1, Lcom/fsck/k9/K9$SplitViewMode;->ALWAYS:Lcom/fsck/k9/K9$SplitViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/K9$SplitViewMode;->NEVER:Lcom/fsck/k9/K9$SplitViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/K9$SplitViewMode;->WHEN_IN_LANDSCAPE:Lcom/fsck/k9/K9$SplitViewMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/K9$SplitViewMode;->$VALUES:[Lcom/fsck/k9/K9$SplitViewMode;

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
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$SplitViewMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 206
    const-class v0, Lcom/fsck/k9/K9$SplitViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/K9$SplitViewMode;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/K9$SplitViewMode;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/fsck/k9/K9$SplitViewMode;->$VALUES:[Lcom/fsck/k9/K9$SplitViewMode;

    invoke-virtual {v0}, [Lcom/fsck/k9/K9$SplitViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/K9$SplitViewMode;

    return-object v0
.end method
