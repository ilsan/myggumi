package com.ilsan.myggumi.web.domain;

import lombok.Data;
import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.Assert;

import java.io.Serializable;
import java.util.*;

@Data
public class MuggumiUser implements UserDetails {

    //UserDetails를 구한한 AdminUserInfo를 사용자라고 생각하면된다

    //계정 아이디
    private String email;
    //계정 비밀번호
    private String password;
    //계정 사용자 이름
    private String name;
    //계정이 가지고 있는 권한 목록
    private Set<GrantedAuthority> authorities;


    public MuggumiUser(String email, String password, String name, Collection<? extends GrantedAuthority> authorities) {

        this.email = email;
        this.password = password;
        this.name = name;
        this.authorities = Collections.unmodifiableSet(sortAuthorities(authorities));

    }


    /**
     * @return 계정이 가지고 있는 권한 목록을 리턴
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {

        return authorities;

    }

    public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
        this.authorities = Collections.unmodifiableSet(sortAuthorities(authorities));

    }


    /**
     * @return 계정의 패스워드를 리턴
     */
    @Override
    public String getPassword() {
        return password;

    }

    /**
     * @return 계정의 이름을 리턴
     */
    @Override
    public String getUsername() {
        return getEmail();

    }

    /**
     * @return 계정이 만료되지 않았는지를 리턴
     * true : 만료되지 않음.
     */
    @Override
    public boolean isAccountNonExpired() {
        return true;

    }

    /**
     * @return 계정이 잠겨있지 않은지를 리턴
     * true : 계정이 잠겨있지 않음
     * false: 계정이 잠겨있음
     */
    @Override
    public boolean isAccountNonLocked() {
        return true;

    }

    /**
     * @return 패스워드가 만료되지 않았는지를 리턴
     * true : 패스워드가 만료되지 않음
     */
    @Override
    public boolean isCredentialsNonExpired() {
        return true;

    }

    /**
     * @return 계정이 사용가능한 계정인지를 리턴
     * true : 사용가능한 계정
     */
    @Override
    public boolean isEnabled() {
        return true;

    }


    private static SortedSet<GrantedAuthority> sortAuthorities(Collection<? extends GrantedAuthority> authorities) {

        Assert.notNull(authorities, "Cannot pass a null GrantedAuthority collection");
        SortedSet<GrantedAuthority> sortedAuthorities = new TreeSet<GrantedAuthority>(new AuthorityComparator());

        for (GrantedAuthority grantedAuthority : authorities) {

            Assert.notNull(grantedAuthority, "GrantedAuthority list cannot contain any null elements");

            sortedAuthorities.add(grantedAuthority);

        }

        return sortedAuthorities;

    }


    private static class AuthorityComparator implements Comparator<GrantedAuthority>, Serializable {

        private static final long serialVersionUID = SpringSecurityCoreVersion.SERIAL_VERSION_UID;

        public int compare(GrantedAuthority g1, GrantedAuthority g2) {
            if (g2.getAuthority() == null) {
                return -1;
            }

            if (g1.getAuthority() == null) {
                return 1;
            }
            return g1.getAuthority().compareTo(g2.getAuthority());

        }

    }

}
