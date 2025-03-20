.class public final enum Lcom/fsck/k9/search/ConditionsTreeNode$Operator;
.super Ljava/lang/Enum;
.source "ConditionsTreeNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/search/ConditionsTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/search/ConditionsTreeNode$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

.field public static final enum AND:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

.field public static final enum CONDITION:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

.field public static final enum OR:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    const-string v1, "AND"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->AND:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    new-instance v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    const-string v1, "OR"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->OR:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    new-instance v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    const-string v1, "CONDITION"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->CONDITION:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    sget-object v1, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->AND:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->OR:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->CONDITION:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->$VALUES:[Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/search/ConditionsTreeNode$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/search/ConditionsTreeNode$Operator;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->$VALUES:[Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    invoke-virtual {v0}, [Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    return-object v0
.end method
