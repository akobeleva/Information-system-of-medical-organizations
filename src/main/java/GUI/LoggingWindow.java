package GUI;

import DAL.ConnectionManager;
import DAL.MyConnection;

import javax.swing.*;
import java.sql.SQLException;

public class LoggingWindow extends JFrame{
    public LoggingWindow(){
        this.setTitle("Авторизация на сервере");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(400, 180);
        JPanel loginPanel = new JPanel();
        loginPanel.setLayout(new BoxLayout(loginPanel, BoxLayout.PAGE_AXIS));

        JPanel usernamePanel = new JPanel();
        JLabel txtUser = new JLabel("Логин:");
        JTextField usernameField = new JTextField(20);
        usernamePanel.add(txtUser);
        usernamePanel.add(usernameField);

        JPanel passwordPanel = new JPanel();
        JLabel txtPassword = new JLabel("Пароль:");
        JPasswordField passwordField = new JPasswordField(20);
        passwordPanel.add(txtPassword);
        passwordPanel.add(passwordField);

        JButton loginButton = new JButton("Войти");
        loginButton.addActionListener(e ->{
            try {
                String username = usernameField.getText();
                String password = new String (passwordField.getPassword());
                MyConnection conn = new MyConnection(username, password, "jdbc:oracle:thin:@localhost:1521:");
                ConnectionManager connManager = new ConnectionManager(conn);
                WindowsManager.setMainFramesVisible("loggingWindow", false);
                WindowsManager.addMainFrame(new AuthorizationWindow(), "authWindow");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        });

        JButton backButton = new JButton("Назад");
        backButton.addActionListener(e->{
            WindowsManager.setMainFramesVisible("loggingWindow", false);
            WindowsManager.setMainFramesVisible("startWindow", true);
        });

        loginPanel.add(usernamePanel);
        loginPanel.add(passwordPanel);
        loginPanel.add(loginButton);
        loginPanel.add(backButton);

        this.add(loginPanel);
        this.setVisible(true);
        this.setLocationRelativeTo(null);
    }
}
