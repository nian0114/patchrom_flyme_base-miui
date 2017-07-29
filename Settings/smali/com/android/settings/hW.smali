.class Lcom/android/settings_ex/hW;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic AW:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/settings_ex/hW;->AW:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/settings_ex/hW;->AW:Lcom/android/settings_ex/TetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherSettings;->a(Lcom/android/settings_ex/TetherSettings;I)V

    .line 596
    return-void
.end method
