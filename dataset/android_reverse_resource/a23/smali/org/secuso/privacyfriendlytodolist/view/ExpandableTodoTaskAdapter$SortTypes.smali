.class public final enum Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;
.super Ljava/lang/Enum;
.source "ExpandableTodoTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

.field public static final enum DEADLINE:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

.field public static final enum PRIORITY:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 74
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    const-string v1, "PRIORITY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->PRIORITY:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    .line 75
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    const-string v1, "DEADLINE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->DEADLINE:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    .line 73
    new-array v0, v4, [Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->PRIORITY:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    aput-object v1, v0, v2

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->DEADLINE:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    aput-object v1, v0, v3

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;
    .locals 1

    .line 73
    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    return-object p0
.end method

.method public static values()[Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;
    .locals 1

    .line 73
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    invoke-virtual {v0}, [Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->id:I

    return v0
.end method
