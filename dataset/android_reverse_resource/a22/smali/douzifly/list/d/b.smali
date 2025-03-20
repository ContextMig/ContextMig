.class public final enum Ldouzifly/list/d/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldouzifly/list/d/b;

.field public static final enum b:Ldouzifly/list/d/b;

.field public static final c:Ldouzifly/list/d/c;

.field private static final synthetic d:[Ldouzifly/list/d/b;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ldouzifly/list/d/b;

    new-instance v1, Ldouzifly/list/d/b;

    const-string v2, "Colorful"

    invoke-direct {v1, v2, v3, v3}, Ldouzifly/list/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldouzifly/list/d/b;->a:Ldouzifly/list/d/b;

    aput-object v1, v0, v3

    new-instance v1, Ldouzifly/list/d/b;

    const-string v2, "Dot"

    invoke-direct {v1, v2, v4, v4}, Ldouzifly/list/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldouzifly/list/d/b;->b:Ldouzifly/list/d/b;

    aput-object v1, v0, v4

    sput-object v0, Ldouzifly/list/d/b;->d:[Ldouzifly/list/d/b;

    new-instance v0, Ldouzifly/list/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/d/c;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/d/b;->c:Ldouzifly/list/d/c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldouzifly/list/d/b;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldouzifly/list/d/b;
    .locals 1

    const-class v0, Ldouzifly/list/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldouzifly/list/d/b;

    return-object v0
.end method

.method public static values()[Ldouzifly/list/d/b;
    .locals 1

    sget-object v0, Ldouzifly/list/d/b;->d:[Ldouzifly/list/d/b;

    invoke-virtual {v0}, [Ldouzifly/list/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldouzifly/list/d/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldouzifly/list/d/b;->e:I

    return v0
.end method
