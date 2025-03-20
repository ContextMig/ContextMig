.class final enum Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;
.super Ljava/lang/Enum;
.source "ComposeCryptoStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AttachErrorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

.field public static final enum IS_INLINE:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    new-instance v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    const-string v1, "IS_INLINE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->IS_INLINE:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 289
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    sget-object v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->IS_INLINE:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->$VALUES:[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

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
    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 289
    const-class v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->$VALUES:[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    return-object v0
.end method
