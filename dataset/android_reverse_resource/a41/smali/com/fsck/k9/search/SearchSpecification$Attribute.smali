.class public final enum Lcom/fsck/k9/search/SearchSpecification$Attribute;
.super Ljava/lang/Enum;
.source "SearchSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/search/SearchSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Attribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/search/SearchSpecification$Attribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public static final enum CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public static final enum ENDSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public static final enum EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public static final enum NOT_CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public static final enum NOT_ENDSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public static final enum NOT_EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public static final enum NOT_STARTSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

.field public static final enum STARTSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    const-string v1, "CONTAINS"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/search/SearchSpecification$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 38
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    const-string v1, "NOT_CONTAINS"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/search/SearchSpecification$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 40
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/search/SearchSpecification$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 41
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    const-string v1, "NOT_EQUALS"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/search/SearchSpecification$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 43
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    const-string v1, "STARTSWITH"

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/search/SearchSpecification$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->STARTSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 44
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    const-string v1, "NOT_STARTSWITH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_STARTSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 46
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    const-string v1, "ENDSWITH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ENDSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 47
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    const-string v1, "NOT_ENDSWITH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/search/SearchSpecification$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_ENDSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fsck/k9/search/SearchSpecification$Attribute;

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->STARTSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_STARTSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ENDSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_ENDSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->$VALUES:[Lcom/fsck/k9/search/SearchSpecification$Attribute;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/search/SearchSpecification$Attribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/search/SearchSpecification$Attribute;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/fsck/k9/search/SearchSpecification$Attribute;->$VALUES:[Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v0}, [Lcom/fsck/k9/search/SearchSpecification$Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/search/SearchSpecification$Attribute;

    return-object v0
.end method
