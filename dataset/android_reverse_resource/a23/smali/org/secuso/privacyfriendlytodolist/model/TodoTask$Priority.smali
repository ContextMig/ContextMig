.class public final enum Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;
.super Ljava/lang/Enum;
.source "TodoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

.field public static final enum HIGH:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

.field public static final enum LOW:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

.field public static final enum MEDIUM:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->HIGH:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->MEDIUM:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    const-string v1, "LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->LOW:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->HIGH:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->MEDIUM:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->LOW:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    aput-object v1, v0, v4

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->value:I

    return-void
.end method

.method public static fromInt(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;
    .locals 5

    .line 56
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 57
    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No such priority defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;
    .locals 1

    .line 42
    const-class v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    return-object p0
.end method

.method public static values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;
    .locals 1

    .line 42
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-virtual {v0}, [Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->value:I

    return v0
.end method
