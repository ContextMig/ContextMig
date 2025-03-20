.class public final enum Ldouzifly/list/widget/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldouzifly/list/widget/c;

.field public static final enum b:Ldouzifly/list/widget/c;

.field public static final enum c:Ldouzifly/list/widget/c;

.field private static final synthetic d:[Ldouzifly/list/widget/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ldouzifly/list/widget/c;

    new-instance v1, Ldouzifly/list/widget/c;

    const-string v2, "Hollow"

    invoke-direct {v1, v2, v3}, Ldouzifly/list/widget/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldouzifly/list/widget/c;->a:Ldouzifly/list/widget/c;

    aput-object v1, v0, v3

    new-instance v1, Ldouzifly/list/widget/c;

    const-string v2, "Solid"

    invoke-direct {v1, v2, v4}, Ldouzifly/list/widget/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldouzifly/list/widget/c;->b:Ldouzifly/list/widget/c;

    aput-object v1, v0, v4

    new-instance v1, Ldouzifly/list/widget/c;

    const-string v2, "Done"

    invoke-direct {v1, v2, v5}, Ldouzifly/list/widget/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldouzifly/list/widget/c;->c:Ldouzifly/list/widget/c;

    aput-object v1, v0, v5

    sput-object v0, Ldouzifly/list/widget/c;->d:[Ldouzifly/list/widget/c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldouzifly/list/widget/c;
    .locals 1

    const-class v0, Ldouzifly/list/widget/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldouzifly/list/widget/c;

    return-object v0
.end method

.method public static values()[Ldouzifly/list/widget/c;
    .locals 1

    sget-object v0, Ldouzifly/list/widget/c;->d:[Ldouzifly/list/widget/c;

    invoke-virtual {v0}, [Ldouzifly/list/widget/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldouzifly/list/widget/c;

    return-object v0
.end method
